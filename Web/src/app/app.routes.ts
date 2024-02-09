import { Routes } from '@angular/router';
import { ClockComponent } from '../pages/clock/clock.component';
import { CalculatorComponent } from '../pages/calculator/calculator.component';
import { ConversorComponent } from '../pages/conversor/conversor.component';

export const routes: Routes = [
    { path: 'clock', component: ClockComponent },
    { path: 'calculator', component: CalculatorComponent },
    { path: 'conversor', component: ConversorComponent },
    { path: '', redirectTo: '/clock', pathMatch: 'full' }
];
