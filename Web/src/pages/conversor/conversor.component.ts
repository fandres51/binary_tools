import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-conversor',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './conversor.component.html',
  styleUrl: './conversor.component.scss'
})
export class ConversorComponent {
  inputValue: string = '';
  outputValue: string = '';

  convert() {
    if (this.isBinary(this.inputValue))
      this.outputValue = this.binaryToText(this.inputValue);
    else {
      this.outputValue = this.textToBinary(this.inputValue);
    }
  }

  private isBinary(str: string) {
    return /^[01\s]+$/.test(str);
  }

  private binaryToText(binary: string) {
    const binaryArray = binary.split(' ');
    const textArray = binaryArray.map(bin => {
      return String.fromCharCode(parseInt(bin, 2));
    });
    return textArray.join('');
  }

  private textToBinary(text: string) {
    const binaryArray = text.split('').map(char => {
      const binary = char.charCodeAt(0).toString(2);
      return '0'.repeat(8 - binary.length) + binary;
    });
    return binaryArray.join(' ');
  }
}