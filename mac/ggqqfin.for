Starts dribbling to ggqqfin.for (2010/8/18, 21:32:49).
NIL
      function ggqq(s,t,m2,mu2)
      implicit double precision (a-z)
      integer nl
      common/nl/nl
      data pi/3.141 592 653 589 793/
      ro = 4*m2/s
      t1 = -t/s
      t2 = 1-t1
      b = dsqrt(1-ro)
      lp = (b+1)/2.0E+0
      lm = (1-b)/2.0E+0
      at = s*t1
      aw = s*t2
      vlm2 = dlog(m2/mu2)
      vltm = dlog(at/m2)
      vlpm = dlog(lp/lm)
      vlsm = dlog(s/m2)
      vlsmu = dlog(s/mu2)
      vlwm = dlog(aw/m2)
      vlbl = dlog(b/lm)
      vdw = ddilog((aw-m2)/aw)-vlwm**2/2.0E+0
      vdt = ddilog((at-m2)/at)-vltm**2/2.0E+0
      vdmp = ddilog(-lm/lp)
      vdmb = vlbl**2/2.0E+0+ddilog(-lm/b)
      auinv = 1/(m2-aw)
      atinv = 1/(m2-at)
      ss = pi*(3*t1-1)*(3*t1+1)*(8*t1**4-16*t1**3+4*ro*t1**2+12*t1**2-4*
     1   ro*t1-4*t1+ro**2)*vlsmu*vlwm/(s*(t1-1)**2*t1**2)/8.0E+0
      ss = ss-pi*(3*t1-1)*(3*t1+1)*(8*t1**4-16*t1**3+4*ro*t1**2+12*t1**2
     1   -4*ro*t1-4*t1+ro**2)*vlsm*vlwm/(s*(t1-1)**2*t1**2)/8.0E+0
      ss = pi*(3*t1-1)*(3*t1+1)*(2*t1**2-2*t1+ro)**2*vlwm/(s*(t1-1)**2*t
     1   1**2)/4.0E+0+ss
      ss = pi*(3*t1-4)*(3*t1-2)*(8*t1**4-16*t1**3+4*ro*t1**2+12*t1**2-4*
     1   ro*t1-4*t1+ro**2)*vlsmu*vltm/(s*(t1-1)**2*t1**2)/8.0E+0+ss
      ss = ss-pi*(3*t1-4)*(3*t1-2)*(8*t1**4-16*t1**3+4*ro*t1**2+12*t1**2
     1   -4*ro*t1-4*t1+ro**2)*vlsm*vltm/(s*(t1-1)**2*t1**2)/8.0E+0
      ss = pi*(3*t1-4)*(3*t1-2)*(2*t1**2-2*t1+ro)**2*vltm/(s*(t1-1)**2*t
     1   1**2)/4.0E+0+ss
      ss = pi*(9*t1**2-9*t1+4)*(8*t1**4-16*t1**3+4*ro*t1**2+12*t1**2-4*r
     1   o*t1-4*t1+ro**2)*vlsmu**2/(s*(t1-1)**2*t1**2)/8.0E+0+ss
      ss = ss-pi*(18*t1**2-18*t1+7)*(8*t1**4-16*t1**3+4*ro*t1**2+12*t1**
     1   2-4*ro*t1-4*t1+ro**2)*vlsm*vlsmu/(s*(t1-1)**2*t1**2)/1.6E+1
      ss = pi*(ro-2)*(18*t1**2-18*t1-1)*(8*t1**4-16*t1**3+4*ro*t1**2+12*
     1   t1**2-4*ro*t1-4*t1+ro**2)*vlpm*vlsmu/(b*s*(t1-1)**2*t1**2)/2.88
     2   E+2+ss
      ss = nl*pi*(9*t1**2-9*t1+4)*(8*t1**4-16*t1**3+4*ro*t1**2+12*t1**2-
     1   4*ro*t1-4*t1+ro**2)*vlsmu/(s*(t1-1)**2*t1**2)/3.6E+1+ss
      ss = (-4.1E+1)*pi*(9*t1**2-9*t1+4)*(8*t1**4-16*t1**3+4*ro*t1**2+12
     1   *t1**2-4*ro*t1-4*t1+ro**2)*vlsmu/(7.2E+1*s*(t1-1)**2*t1**2)+ss
      ss = ss-pi*(8*t1**4-16*t1**3+4*ro*t1**2+12*t1**2-4*ro*t1-4*t1+ro**
     1   2)*vlsm**2/(s*(t1-1)**2*t1**2)/1.6E+1
      ss = ss-pi*(ro-2)*(18*t1**2-18*t1-1)*(8*t1**4-16*t1**3+4*ro*t1**2+
     1   12*t1**2-4*ro*t1-4*t1+ro**2)*vlpm*vlsm/(b*s*(t1-1)**2*t1**2)/2.
     2   88E+2
      ss = ss-nl*pi*(9*t1**2-9*t1+4)*(8*t1**4-16*t1**3+4*ro*t1**2+12*t1*
     1   *2-4*ro*t1-4*t1+ro**2)*vlsm/(s*(t1-1)**2*t1**2)/3.6E+1
      ss = pi*(3600*t1**6-10800*t1**5+2124*ro*t1**4+13912*t1**4-4248*ro*
     1   t1**3-9824*t1**3+531*ro**2*t1**2+3104*ro*t1**2+3768*t1**2-531*r
     2   o**2*t1-980*ro*t1-656*t1+245*ro**2)*vlsm/(s*(t1-1)**2*t1**2)/7.
     3   2E+1+ss
      ss = pi*(ro-2)*(2*t1**2-2*t1+ro)**2*(18*t1**2-18*t1-1)*vlpm/(b*s*(
     1   t1-1)**2*t1**2)/1.44E+2+ss
      ss = nl*pi*(2*t1**2-2*t1+ro)**2*(9*t1**2-9*t1+4)/(s*(t1-1)**2*t1**
     1   2)/1.8E+1+ss
      ss = ss-pi*(9*t1**2-9*t1+4)*(59*t1**4-118*t1**3+68*ro*t1**2+59*t1*
     1   *2-68*ro*t1+17*ro**2)/(s*(t1-1)**2*t1**2)/9.0E+0
      dd = auinv*pi*(3*t1+(-1.0E+0)/3.0E+0)*(4*t1+ro-4)*(8*t1**4-16*t1**
     1   3+12*ro*t1**2+8*t1**2-12*ro*t1+3*ro**2)*vlwm**2/((t1-1)**3*t1)/
     2   3.84E+2
      dd = dd-pi*(12*ro*t1**4+12*t1**4+6*ro**2*t1**3+(-7.6E+1)*ro*t1**3/
     1   3.0E+0+(-1.52E+2)*t1**3/3.0E+0+(-5.6E+1)*ro**2*t1**2/3.0E+0+1.3
     2   E+2*ro*t1**2/3.0E+0+80*t1**2+6.7E+1*ro**2*t1/3.0E+0+(-1.28E+2)*
     3   ro*t1/3.0E+0-56*t1-7*ro**2+3.8E+1*ro/3.0E+0+4.4E+1/3.0E+0)*vlwm
     4   **2/(s*(t1-1)**3*t1)/4.8E+1
      dd = dd-pi*(4*t1**4-8*t1**3+ro**2*t1**2+2*ro*t1**2+6*t1**2-ro**2*t
     1   1-2*ro*t1-2*t1+ro**2)*vltm*vlwm/(s*(t1-1)**2*t1**2)/4.0E+0
      dd = 9.0E+0*pi*(8*t1**4-24*t1**3+2*ro*t1**2+30*t1**2-2*ro*t1-18*t1
     1   +ro**2+4)*vlsm*vlwm/(8.0E+0*s*(t1-1)**2)+dd
      dd = dd-pi*(3*t1+(-1.0E+1)/3.0E+0)*(4*t1**3+2*ro**2*t1**2+2*ro*t1*
     1   *2-12*t1**2-6*ro**2*t1-2*ro*t1+16*t1-ro**3+6*ro**2-8)*vlpm*vlwm
     2   /(b*s*(t1-1)**2*t1)/4.8E+1
      dd = auinv**2*pi*s*(3*t1+(-1.0E+0)/3.0E+0)*(32*t1**5+(-8.0E+0)*ro*
     1   t1**4/3.0E+0+(-1.024E+3)*t1**4/3.0E+0-40*ro*t1**3+2.752E+3*t1**
     2   3/3.0E+0-4*ro**2*t1**2+56*ro*t1**2-1024*t1**2-8*ro**2*t1+5.6E+1
     3   *ro*t1/3.0E+0+1.504E+3*t1/3.0E+0-ro**3+12*ro**2-32*ro+(-2.56E+2
     4   )/3.0E+0)*vlwm/((t1-1)**2*t1)/1.28E+2+dd
      dd = dd-auinv*pi*(3*t1+(-1.0E+0)/3.0E+0)*(1.0E+2*t1**4/3.0E+0+3.2E
     1   +1*ro*t1**3/3.0E+0+(-3.32E+2)*t1**3/3.0E+0+8.0E+0*ro**2*t1**2/3
     2   .0E+0+(-1.0E+1)*ro*t1**2/3.0E+0+132*t1**2+8.0E+0*ro**2*t1/3.0E+
     3   0+(-7.6E+1)*ro*t1/3.0E+0+(-1.96E+2)*t1/3.0E+0+4.0E+0*ro**3/3.0E
     4   +0+(-1.7E+1)*ro**2/3.0E+0+18*ro+3.2E+1/3.0E+0)*vlwm/((t1-1)**2*
     5   t1)/1.6E+1
      dd = (-3.0E+0)*pi*(2*t1**2-2*t1+ro)**2*(3*t1**2+(-1.0E+0)/3.0E+0)*
     1   vlwm/(4.0E+0*s*(t1-1)**2*t1**2)+dd
      dd = dd-atinv*pi*(8.0E+0/3.0E+0-3*t1)*(4*t1-ro)*(8*t1**4-16*t1**3+
     1   12*ro*t1**2+8*t1**2-12*ro*t1+3*ro**2)*vltm**2/((t1-1)*t1**3)/3.
     2   84E+2
      dd = pi*(-12*ro*t1**4-12*t1**4+6*ro**2*t1**3+6.8E+1*ro*t1**3/3.0E+
     1   0+(-8.0E+0)*t1**3/3.0E+0+2.0E+0*ro**2*t1**2/3.0E+0+(-1.18E+2)*r
     2   o*t1**2/3.0E+0+3*ro**2*t1+16*ro*t1+(-8.0E+0)*ro**2/3.0E+0)*vltm
     3   **2/(s*(t1-1)*t1**3)/4.8E+1+dd
      dd = 9.0E+0*pi*(8*t1**4-8*t1**3+2*ro*t1**2+6*t1**2-2*ro*t1-2*t1+ro
     1   **2)*vlsm*vltm/(8.0E+0*s*t1**2)+dd
      dd = dd-pi*((-1.0E+0)/3.0E+0-3*t1)*(4*t1**3-2*ro**2*t1**2-2*ro*t1*
     1   *2-2*ro**2*t1+2*ro*t1+4*t1+ro**3-2*ro**2)*vlpm*vltm/(b*s*(t1-1)
     2   *t1**2)/4.8E+1
      dd = atinv**2*pi*s*(8.0E+0/3.0E+0-3*t1)*(32*t1**5+8.0E+0*ro*t1**4/
     1   3.0E+0+5.44E+2*t1**4/3.0E+0+(-1.52E+2)*ro*t1**3/3.0E+0-128*t1**
     2   3+4*ro**2*t1**2+80*ro*t1**2-16*ro**2*t1+ro**3)*vltm/((t1-1)*t1*
     3   *2)/1.28E+2+dd
      dd = atinv*pi*(8.0E+0/3.0E+0-3*t1)*(1.0E+2*t1**4/3.0E+0+(-3.2E+1)*
     1   ro*t1**3/3.0E+0+(-6.8E+1)*t1**3/3.0E+0+8.0E+0*ro**2*t1**2/3.0E+
     2   0+8.6E+1*ro*t1**2/3.0E+0-8*ro**2*t1+4.0E+0*ro**3/3.0E+0-ro**2/3
     3   .0E+0)*vltm/((t1-1)*t1**2)/1.6E+1+dd
      dd = (-3.0E+0)*pi*(2*t1**2-2*t1+ro)**2*(3*t1**2-6*t1+8.0E+0/3.0E+0
     1   )*vltm/(4.0E+0*s*(t1-1)**2*t1**2)+dd
      dd = 9.0E+0*pi*(ro+1)*(2*t1**2-2*t1+1)*vlsm**2/(1.6E+1*s*(t1-1)*t1
     1   )+dd
      dd = pi*(12*ro**2*t1**4+12*ro*t1**4+(-1.16E+2)*t1**4/3.0E+0-24*ro*
     1   *2*t1**3-24*ro*t1**3+2.32E+2*t1**3/3.0E+0-6*ro**3*t1**2+38*ro**
     2   2*t1**2+3.4E+1*ro*t1**2/3.0E+0+(-2.0E+2)*t1**2/3.0E+0+6*ro**3*t
     3   1-26*ro**2*t1+2.0E+0*ro*t1/3.0E+0+28*t1+ro**3/3.0E+0+(-2.0E+0)*
     4   ro**2/3.0E+0)*vlpm*vlsm/(b*s*(t1-1)**2*t1**2)/9.6E+1+dd
      dd = 9.0E+0*pi*(2*t1-1)**2*(4*ro*t1**2-12*t1**2-4*ro*t1+12*t1-ro**
     1   2+ro-4)*vlsm/(1.6E+1*b**2*s*(t1-1)*t1)+dd
      dd = 2.7E+1*pi*(2*t1-1)**2*(4*t1**2-4*t1-ro+2)*vlsm/(3.2E+1*b**4*s
     1   *(t1-1)*t1)+dd
      dd = (-9.0E+0)*pi*(16*t1**6-48*t1**5+24*ro*t1**4+48*t1**4-48*ro*t1
     1   **3-16*t1**3+4*ro**2*t1**2+34*ro*t1**2-t1**2-4*ro**2*t1-10*ro*t
     2   1+t1+2*ro**2)*vlsm/(1.6E+1*s*(t1-1)**2*t1**2)+dd
      dd = pi*(-16*ro*t1**4-544*t1**4+32*ro*t1**3+1088*t1**3-12*ro**2*t1
     1   **2+(-1.81E+2)*ro*t1**2/9.0E+0+(-9.026E+3)*t1**2/9.0E+0+12*ro**
     2   2*t1+3.7E+1*ro*t1/9.0E+0+4.13E+3*t1/9.0E+0+(-3.8E+1)*ro**2/9.0E
     3   +0+(-2.0E+0)*ro/9.0E+0+(-5.72E+2)/9.0E+0)*vlpm**2/(b*s*(t1-1)*t
     4   1)/6.4E+1+dd
      dd = (-9.0E+0)*pi*(16*ro*t1**4-48*t1**4-32*ro*t1**3+96*t1**3-7*ro*
     1   *2*t1**2+49*ro*t1**2-98*t1**2+7*ro**2*t1-33*ro*t1+50*t1+ro**3-3
     2   *ro**2+6*ro-8)*vlpm**2/(6.4E+1*b**3*s*(t1-1)*t1)+dd
      dd = (-9.0E+0)*pi*(2*t1-1)**2*(4*ro*t1**2+8*t1**2-4*ro*t1-8*t1+3*r
     1   o**2-8*ro+8)*vlpm**2/(1.28E+2*b**5*s*(t1-1)*t1)+dd
      dd = dd-pi*(12*ro**2*t1**2+8*ro*t1**2+1.16E+2*t1**2/9.0E+0-12*ro**
     1   2*t1-8*ro*t1+(-1.16E+2)*t1/9.0E+0+1.6E+1*ro**2/9.0E+0+2*ro+2.8E
     2   +1/3.0E+0)*vlpm**2/(s*(t1-1)*t1)/6.4E+1
      dd = b*pi*(12*ro**2*t1**2+8*ro*t1**2+8*t1**2-12*ro**2*t1-8*ro*t1-8
     1   *t1+3*ro**2+2*ro+2.9E+1/9.0E+0)*vlpm/(s*(t1-1)*t1)/1.6E+1+dd
      dd = dd-pi*(144*ro*t1**6-240*t1**6-432*ro*t1**5+720*t1**5+24*ro**2
     1   *t1**4+9.64E+2*ro*t1**4/3.0E+0+(-2.02E+3)*t1**4/3.0E+0-48*ro**2
     2   *t1**3+2.32E+2*ro*t1**3/3.0E+0+4.4E+2*t1**3/3.0E+0+12*ro**3*t1*
     3   *2+(-2.6E+1)*ro**2*t1**2/3.0E+0+(-3.43E+2)*ro*t1**2/3.0E+0+66*t
     4   1**2-12*ro**3*t1+9.8E+1*ro**2*t1/3.0E+0+1.1E+1*ro*t1/3.0E+0+(-5
     5   .8E+1)*t1/3.0E+0+(-2.0E+0)*ro**3/3.0E+0+4.0E+0*ro**2/3.0E+0)*vl
     6   pm/(b*s*(t1-1)**2*t1**2)/9.6E+1
      dd = dd-(2*nl-33)*pi*(3*t1**2-3*t1+4.0E+0/3.0E+0)*(8*t1**4-16*t1**
     1   3+4*ro*t1**2+12*t1**2-4*ro*t1-4*t1+ro**2)*vlm2/(s*(t1-1)**2*t1*
     2   *2)/2.4E+1
      dd = dd-auinv*pi*(3*t1+(-1.0E+0)/3.0E+0)*(4*t1+ro-4)*((-8.0E+0)*t1
     1   **4/3.0E+0+1.6E+1*t1**3/3.0E+0-4*ro*t1**2+2.8E+1*t1**2/3.0E+0+4
     2   *ro*t1-24*t1-ro**2+12)*vdw/((t1-1)**3*t1)/1.28E+2
      dd = pi*(-144*t1**5-40*ro*t1**4+472*t1**4-2*ro**2*t1**3+7.24E+2*ro
     1   *t1**3/9.0E+0+(-5.086E+3)*t1**3/9.0E+0+3.8E+1*ro**2*t1**2/9.0E+
     2   0+(-4.18E+2)*ro*t1**2/9.0E+0+8.62E+2*t1**2/3.0E+0+(-3.1E+1)*ro*
     3   *2*t1/9.0E+0+5.6E+1*ro*t1/9.0E+0+(-1.42E+2)*t1/3.0E+0+ro**2/3.0
     4   E+0+(-2.0E+0)*ro/9.0E+0+(-2.6E+1)/9.0E+0)*vdw/(s*(t1-1)**3*t1)/
     5   1.6E+1+dd
      dd = atinv*pi*(8.0E+0/3.0E+0-3*t1)*(4*t1-ro)*((-8.0E+0)*t1**4/3.0E
     1   +0+1.6E+1*t1**3/3.0E+0-4*ro*t1**2+2.8E+1*t1**2/3.0E+0+4*ro*t1-r
     2   o**2)*vdt/((t1-1)*t1**3)/1.28E+2+dd
      dd = dd-pi*(-144*t1**5+40*ro*t1**4+248*t1**4-2*ro**2*t1**3+(-7.16E
     1   +2)*ro*t1**3/9.0E+0+(-1.054E+3)*t1**3/9.0E+0+1.6E+1*ro**2*t1**2
     2   /9.0E+0+4.06E+2*ro*t1**2/9.0E+0+16*t1**2-ro**2*t1+(-1.6E+1)*ro*
     3   t1/3.0E+0+8.0E+0*ro**2/9.0E+0)*vdt/(s*(t1-1)*t1**3)/1.6E+1
      dd = pi*(-576*t1**6+1728*t1**5-4*ro**2*t1**4-13*ro*t1**4+(-1.981E+
     1   4)*t1**4/9.0E+0+8*ro**2*t1**3+26*ro*t1**3+1.37E+4*t1**3/9.0E+0+
     2   2*ro**3*t1**2+(-3.8E+1)*ro**2*t1**2/3.0E+0+(-1.15E+2)*ro*t1**2/
     3   9.0E+0+(-4.822E+3)*t1**2/9.0E+0-2*ro**3*t1+2.6E+1*ro**2*t1/3.0E
     4   +0+(-2.0E+0)*ro*t1/9.0E+0+1.88E+2*t1/3.0E+0-ro**3/9.0E+0+2.0E+0
     5   *ro**2/9.0E+0)*vdmp/(b*s*(t1-1)**2*t1**2)/1.6E+1+dd
      dd = (-9.0E+0)*pi*(16*ro*t1**4-48*t1**4-32*ro*t1**3+96*t1**3-7*ro*
     1   *2*t1**2+49*ro*t1**2-98*t1**2+7*ro**2*t1-33*ro*t1+50*t1+ro**3-3
     2   *ro**2+6*ro-8)*vdmp/(1.6E+1*b**3*s*(t1-1)*t1)+dd
      dd = (-9.0E+0)*pi*(2*t1-1)**2*(4*ro*t1**2+8*t1**2-4*ro*t1-8*t1+3*r
     1   o**2-8*ro+8)*vdmp/(3.2E+1*b**5*s*(t1-1)*t1)+dd
      dd = pi*(ro-2)*(6*t1**2-6*t1+(-1.0E+0)/3.0E+0)*(8*t1**4-16*t1**3+4
     1   *ro*t1**2+12*t1**2-4*ro*t1-4*t1+ro**2)*vdmb/(b*s*(t1-1)**2*t1**
     2   2)/4.8E+1+dd
      dd = pi**3*(-64*ro*t1**6-448*t1**6+192*ro*t1**5+1344*t1**5-36*ro**
     1   2*t1**4+(-1.525E+3)*ro*t1**4/9.0E+0+(-1.5842E+4)*t1**4/9.0E+0+7
     2   2*ro**2*t1**3+1.7E+2*ro*t1**3/9.0E+0+1.1524E+4*t1**3/9.0E+0-6*r
     3   o**3*t1**2+(-2.42E+2)*ro**2*t1**2/9.0E+0+21*ro*t1**2+(-4.342E+3
     4   )*t1**2/9.0E+0+6*ro**3*t1+(-8.2E+1)*ro**2*t1/9.0E+0+1.4E+1*ro*t
     5   1/9.0E+0+5.96E+2*t1/9.0E+0+ro**3/3.0E+0+(-2.0E+0)*ro**2/3.0E+0)
     6   /(b*s*(t1-1)**2*t1**2)/1.92E+2+dd
      dd = dd-pi*(ro-1)*(2*t1-1)**2/(b**2*s*(t1-1)*t1)/1.6E+1
      dd = (-3.0E+0)*pi**3*(16*ro*t1**4-48*t1**4-32*ro*t1**3+96*t1**3-7*
     1   ro**2*t1**2+49*ro*t1**2-98*t1**2+7*ro**2*t1-33*ro*t1+50*t1+ro**
     2   3-3*ro**2+6*ro-8)/(6.4E+1*b**3*s*(t1-1)*t1)+dd
      dd = 9.0E+0*pi*(ro-1)*(2*t1-1)**4/(1.6E+1*b**4*s*(t1-1)*t1)+dd
      dd = (-3.0E+0)*pi**3*(2*t1-1)**2*(4*ro*t1**2+8*t1**2-4*ro*t1-8*t1+
     1   3*ro**2-8*ro+8)/(1.28E+2*b**5*s*(t1-1)*t1)+dd
      dd = dd-auinv*pi*(3*t1+(-1.0E+0)/3.0E+0)*((-3.2E+1)*pi**2*t1**5/3.
     1   0E+0+256*t1**5+(-8.0E+0)*pi**2*ro*t1**4/3.0E+0+32*pi**2*t1**4-3
     2   200*t1**4+(-3.2E+1)*pi**2*ro*t1**3/3.0E+0-544*ro*t1**3-32*pi**2
     3   *t1**3+9088*t1**3-4*pi**2*ro**2*t1**2-32*ro**2*t1**2+8.8E+1*pi*
     4   *2*ro*t1**2/3.0E+0+1248*ro*t1**2+3.2E+1*pi**2*t1**2/3.0E+0-1062
     5   4*t1**2+40*ro**2*t1-16*pi**2*ro*t1-864*ro*t1+5504*t1-pi**2*ro**
     6   3+4*pi**2*ro**2-8*ro**2+160*ro-1024)/((t1-1)**3*t1)/7.68E+2
      dd = atinv*pi*(8.0E+0/3.0E+0-3*t1)*((-3.2E+1)*pi**2*t1**5/3.0E+0+2
     1   56*t1**5+8.0E+0*pi**2*ro*t1**4/3.0E+0+6.4E+1*pi**2*t1**4/3.0E+0
     2   +1920*t1**4+(-6.4E+1)*pi**2*ro*t1**3/3.0E+0-544*ro*t1**3+(-3.2E
     3   +1)*pi**2*t1**3/3.0E+0-1152*t1**3+4*pi**2*ro**2*t1**2+32*ro**2*
     4   t1**2+5.6E+1*pi**2*ro*t1**2/3.0E+0+384*ro*t1**2-8*pi**2*ro**2*t
     5   1-24*ro**2*t1+pi**2*ro**3)/((t1-1)*t1**3)/7.68E+2+dd
      dd = -pi*(1440*pi**2*t1**8+384*nl*t1**8-14400*t1**8-5760*pi**2*t1*
     1   *7-1536*nl*t1**7+57600*t1**7-36*pi**2*ro**2*t1**6+288*ro**2*t1*
     2   *6+640*pi**2*ro*t1**6+432*nl*ro*t1**6-14688*ro*t1**6+2.9764E+4*
     3   pi**2*t1**6/3.0E+0+7.424E+3*nl*t1**6/3.0E+0-91072*t1**6+108*pi*
     4   *2*ro**2*t1**5-864*ro**2*t1**5-1920*pi**2*ro*t1**5-1296*nl*ro*t
     5   1**5+44064*ro*t1**5-9604*pi**2*t1**5-2048*nl*t1**5+71616*t1**5+
     6   4.12E+2*pi**2*ro**2*t1**4/9.0E+0+96*nl*ro**2*t1**4-2712*ro**2*t
     7   1**4+6.754E+3*pi**2*ro*t1**4/3.0E+0+4.436E+3*nl*ro*t1**4/3.0E+0
     8   -50496*ro*t1**4+5.002E+4*pi**2*t1**4/9.0E+0+896*nl*t1**4+(-8.45
     9   12E+4)*t1**4/3.0E+0+(-2.444E+3)*pi**2*ro**2*t1**3/9.0E+0-192*nl
     :   *ro**2*t1**3+6864*ro**2*t1**3+(-3.908E+3)*pi**2*ro*t1**3/3.0E+0
     ;   +(-2.392E+3)*nl*ro*t1**3/3.0E+0+27552*ro*t1**3+(-1.646E+4)*pi**
     <   2*t1**3/9.0E+0+(-5.12E+2)*nl*t1**3/3.0E+0+1.2544E+4*t1**3/3.0E+
     =   0+7.0E+2*pi**2*ro**2*t1**2/3.0E+0+4.16E+2*nl*ro**2*t1**2/3.0E+0
     >   +(-1.5592E+4)*ro**2*t1**2/3.0E+0+342*pi**2*ro*t1**2+5.48E+2*nl*
     ?   ro*t1**2/3.0E+0+(-1.9168E+4)*ro*t1**2/3.0E+0+2.464E+3*pi**2*t1*
     @   *2/9.0E+0+7.36E+2*t1**2/3.0E+0+(-7.16E+2)*pi**2*ro**2*t1/9.0E+0
     1   +(-1.28E+2)*nl*ro**2*t1/3.0E+0+4.864E+3*ro**2*t1/3.0E+0+(-3.2E+
     2   1)*pi**2*ro*t1/3.0E+0+(-1.28E+2)*ro*t1/3.0E+0+1.6E+1*pi**2*ro**
     3   2/9.0E+0)/(s*(t1-1)**3*t1**3)/1.92E+2+pi**3*(3*t1**2-3*t1+4.0E+
     4   0/3.0E+0)*(8*t1**4-16*t1**3+4*ro*t1**2+12*t1**2-4*ro*t1-4*t1+ro
     5   **2)/(s*(t1-1)**2*t1**2)/8.0E+0+dd
      ggqq = (ss+dd)/pi/4.0E+0
      return
      end
