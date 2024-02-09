import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-calculator',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './calculator.component.html',
  styleUrl: './calculator.component.scss'
})

export class CalculatorComponent {
  inputValue: string = '';
  num1: number = 0;
  num2: number = 0;
  operation: string = '';

  numberClick(number: string): void {
    if (this.inputValue === 'Error') {
      this.inputValue = '';
    }
    this.inputValue += number;
  }

  operationClick(operation: string): void {
    if (this.inputValue === 'Error') {
      this.inputValue = '';
    }
    if (this.operation !== '' && this.inputValue !== '') {
      this.num2 = parseInt(this.inputValue, 2);
      this.inputValue = '';
      this.performOperation();
      this.num1 = parseInt(this.inputValue, 2);
      this.operation = operation;
    } else if (this.operation === '' && this.inputValue !== '') {
      this.num1 = parseInt(this.inputValue, 2);
      this.inputValue = '';
      this.operation = operation;
    } else if (this.operation !== '' && this.inputValue === '') {
      this.operation = operation;
    }
  }

  clearClick(): void {
    this.inputValue = '';
    this.num1 = 0;
    this.num2 = 0;
    this.operation = '';
  }

  equalsClick(): void {
    try {
      this.num2 = parseInt(this.inputValue, 2);
      this.inputValue = '';
      this.performOperation();
      this.num1 = parseInt(this.inputValue, 2);
      this.operation = '';
    } catch (e) {
      this.inputValue = 'Error';
    }
  }

  private performOperation(): void {
    switch (this.operation) {
      case '+':
        this.inputValue = (this.num1 + this.num2).toString(2);
        break;
      case '-':
        this.inputValue = (this.num1 - this.num2).toString(2);
        break;
      case '*':
        this.inputValue = (this.num1 * this.num2).toString(2);
        break;
      case '/':
        this.inputValue = (this.num1 / this.num2).toString(2);
        break;
    }
  }
}