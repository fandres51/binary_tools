import { Component, ViewChild, ElementRef } from '@angular/core';

@Component({
  selector: 'app-clock',
  standalone: true,
  imports: [],
  templateUrl: './clock.component.html',
  styleUrl: './clock.component.scss'
})
export class ClockComponent {

  hour = 0;
  minute = 0;
  second = 0;

  constructor() {
    this.hour = new Date().getHours();
    this.minute = new Date().getMinutes();
    this.second = new Date().getSeconds();

    setInterval(() => {

      if (this.second > 58) {
        this.minute++;
        this.second = 0;
        if (this.minute > 58) {
          this.hour++;
          this.minute = 0;
          if (this.hour > 22) {
            this.hour = 0;
          }
        }
      } else {
        this.second++;
      }

      // console.log(this.toBinary(this.hour), this.toBinary(this.minute), this.toBinary(this.second));

      this.isActiveH00 = this.toBinary(this.hour).charAt(0) == '1';
      this.isActiveH01 = this.toBinary(this.hour).charAt(1) == '1';
      this.isActiveH02 = this.toBinary(this.hour).charAt(2) == '1';
      this.isActiveH03 = this.toBinary(this.hour).charAt(3) == '1';
      this.isActiveH10 = this.toBinary(this.hour).charAt(4) == '1';
      this.isActiveH11 = this.toBinary(this.hour).charAt(5) == '1';
      this.isActiveH12 = this.toBinary(this.hour).charAt(6) == '1';
      this.isActiveH13 = this.toBinary(this.hour).charAt(7) == '1';
      this.isActiveM00 = this.toBinary(this.minute).charAt(0) == '1';
      this.isActiveM01 = this.toBinary(this.minute).charAt(1) == '1';
      this.isActiveM02 = this.toBinary(this.minute).charAt(2) == '1';
      this.isActiveM03 = this.toBinary(this.minute).charAt(3) == '1';
      this.isActiveM10 = this.toBinary(this.minute).charAt(4) == '1';
      this.isActiveM11 = this.toBinary(this.minute).charAt(5) == '1';
      this.isActiveM12 = this.toBinary(this.minute).charAt(6) == '1';
      this.isActiveM13 = this.toBinary(this.minute).charAt(7) == '1';
      this.isActiveS00 = this.toBinary(this.second).charAt(0) == '1';
      this.isActiveS01 = this.toBinary(this.second).charAt(1) == '1';
      this.isActiveS02 = this.toBinary(this.second).charAt(2) == '1';
      this.isActiveS03 = this.toBinary(this.second).charAt(3) == '1';
      this.isActiveS10 = this.toBinary(this.second).charAt(4) == '1';
      this.isActiveS11 = this.toBinary(this.second).charAt(5) == '1';
      this.isActiveS12 = this.toBinary(this.second).charAt(6) == '1';
      this.isActiveS13 = this.toBinary(this.second).charAt(7) == '1';

    }, 1000);
  }

  toBinary(num: number): string {
    return (num >>> 0).toString(2).padStart(8, '0');
  }

  isActiveH00: boolean = false;
  isActiveH01: boolean = false;
  isActiveH02: boolean = false;
  isActiveH03: boolean = false;
  isActiveH10: boolean = false;
  isActiveH11: boolean = false;
  isActiveH12: boolean = false;
  isActiveH13: boolean = false;
  isActiveM00: boolean = false;
  isActiveM01: boolean = false;
  isActiveM02: boolean = false;
  isActiveM03: boolean = false;
  isActiveM10: boolean = false;
  isActiveM11: boolean = false;
  isActiveM12: boolean = false;
  isActiveM13: boolean = false;
  isActiveS00: boolean = false;
  isActiveS01: boolean = false;
  isActiveS02: boolean = false;
  isActiveS03: boolean = false;
  isActiveS10: boolean = false;
  isActiveS11: boolean = false;
  isActiveS12: boolean = false;
  isActiveS13: boolean = false;



}