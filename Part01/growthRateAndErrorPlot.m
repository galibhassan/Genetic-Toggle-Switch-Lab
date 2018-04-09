%---- This is a matlab file with .m extension. My version of mathematica cannot generate errorbars :( 
%---- The growthRate and growthRateError matrices are obtained from the growthRateAndErrorExport[] function in toggleSwitchPart1Main.nb 
growthRate = [
    122.35172195879562, 112.8389721226552, 142.81131750888082, 115.19528456671249, 118.64021817262561, 114.10423724882698, 115.83594820139051, 0., 0., -0.4248644828463249, 0., 118.87368370142444;
    120.42457175969435, 109.67527456263137, 132.67271844385994, 112.94245510432927, 127.31619174546856, 112.62947107382301, 102.16580671153581, 100.92706095617007, 100.48231189655804, 101.47855097841028, 108.13529925515626, -0.7656156215453371;
    0.4215767938591608, 3.5298688723072154, 3.7819118244190246, -0.4377379638201395, -1.5980743173777359, -0.14192517639739408, -1.6728989498685745, -1.3937523689680744, -1.7314138722333627, -1.4356010848106202, -2.3570155341720316, 0.3339479991382212;
    3.1632420368508636, 0.5338731586614417, 1.904799855595185, 4.012357036527842, -1.114694912166623, -1.5944895480604162, -1.01432137128162, 1.4046453144074345, 8.88488046101479, 1.5599490083399086, 7.280498137959903, 124.23458738334695;
    121.50200289578062, 111.38399149764012, 133.3653612336391, 113.40837608880439, 133.59898520528074, 124.65530264424865, 113.12853632046681, -5.332681050556859, -5.332681050556859, -4.712377321172798, -5.72528260954729, 119.31672950047682;
    118.26924406167116, 111.88054146415529, 124.53457910074735, 109.75317892787824, 126.78663615427216, 121.55633888816777, 117.02821078776314, -4.974897306261747, -4.371933165481636, -4.120751746327311, -4.586910395066537, 2.1766679684066474;
    1.9357952367090445, 1.6053824934997742, 1.6502812340653448, 3.8868901104215845, 4.666409091418622, 4.110304421383169, -0.04629501811735784, -6.101128837916426, -5.800107242038125, -5.537715991758918, -5.0368682631341155, 3.69088641125653;
    5.173535117687578, 5.891538664985151, 6.370422254533113, 5.846907296716741, 2.9762200663344633, 0.996447038083349, -2.6707620708590554, -6.146562323076291, -1.0970582432325076, -5.332681050556859, -6.4423751104990385, 0.
];

growthRateError = [
    21.27701087019779, 18.48787233652853, 28.24476107811882, 18.826624352333816, 18.523455107549232, 20.13110600843957, 20.054687537257628, 0., 0., 0.3831746499108548, 0., 18.400933117589066;
    20.64772597749747, 18.259624026533128, 26.49675495683444, 17.926779431216527, 22.196182685776837, 19.735059595952613, 16.842996244592154, 17.070933630299063, 16.19911584393315, 16.400816901802187, 18.548015903812882, 3.6600615779786843;
    2.9546450251569656, 2.8744670018797946, 0.9433793745384718, 2.632847546241109, 2.360064096148301, 2.5275303323732228, 2.6723577636728506, 2.837398658880463, 2.9348963230574907, 2.84625776657145, 2.625450617807737, 4.175196122198589;
    2.7295829973899166, 2.5393137133886445, 2.3028831760292525, 2.3109268781113297, 2.0648276112806996, 2.508024487481699, 2.658451676191285, 2.40477548857369, 4.2812674271132884, 2.5190976275578314, 2.4368847779939546, 23.344289653407543;
    20.42731970411677, 17.07755332753841, 24.348714368268617, 16.67356854681837, 25.156854617415966, 23.047274457397343, 19.292591526033217, 2.2535047134901207, 2.2535047134901207, 1.5726980248999571, 1.9278359981555198, 18.70977848072709;
    19.470281858029157, 16.958586254997783, 21.762549843025255, 16.193459424024784, 19.424348295058362, 20.77793966310125, 21.7736017654241, 6.172704700273372, 2.467088778895899, 1.5997102983160165, 1.477221956134539, 1.6851465573569584;
    2.2024443950773467, 2.7263531590538688, 1.6438452809039723, 1.939193820040582, 3.4007462275520095, 2.5402745068858295, 2.3894297369812896, 2.274417030079337, 2.2829954312052227, 1.7893667802484496, 2.1928343858795727, 1.108495289018611;
    1.0862437662169995, 1.9394270297749305, 0.8907415512333484, 1.1273050048225226, 1.6221435436076799, 2.0670912427124786, 2.911067995000449, 2.1122500457948803, 2.8356981718468868, 2.2535047134901207, 2.2135053617519893, 0.
];


xDt_IPTG = [.015625, .03125, .0625, .125, .25, .5, 1, 2 ];
xDt_aTc = [.78, 1.56, 3.125, 6.25, 12.5, 25, 50, 100];

a = growthRate(1, 1:8);
aErr = growthRateError(1,1:8);
c = growthRate(3,1:8);
cErr = growthRateError(3,1:8);
e = growthRate(5,1:8);
eErr = growthRateError(5,1:8);
g = growthRate(7,1:8);
gErr = growthRateError(7,1:8);


figure(1)
errorbar(xDt_IPTG,a,aErr, 'o')

hold on

figure(1)
errorbar(xDt_IPTG,c,cErr, 'o','color', 'g')
legend('wild type', 'ONC1')

xlabel('IPTG Concentration mM')
ylabel('Growth rate 10^{-7} s^{-1}')
title('Growth rate of MG1655 and ONC1 with varying IPTG concentration')

%---------------------------------

figure(2)
errorbar(xDt_aTc,e,eErr, 'o')

hold on

figure(2)
errorbar(xDt_aTc,g,gErr, 'o')
legend('wild type MG1655', 'ONC2')

xlabel('aTc Concentration ng/ml')
ylabel('Growth rate 10^{-7} s^{-1}')
title('Growth rate of MG1655 and ONC2 with varying aTc concentration')


