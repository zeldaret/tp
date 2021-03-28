lbl_80271BA8:
/* 80271BA8  EC 03 10 28 */	fsubs f0, f3, f2
/* 80271BAC  48 00 00 08 */	b lbl_80271BB4
lbl_80271BB0:
/* 80271BB0  EC 21 00 28 */	fsubs f1, f1, f0
lbl_80271BB4:
/* 80271BB4  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 80271BB8  4C 41 13 82 */	cror 2, 1, 2
/* 80271BBC  41 82 FF F4 */	beq lbl_80271BB0
/* 80271BC0  48 00 00 08 */	b lbl_80271BC8
lbl_80271BC4:
/* 80271BC4  EC 21 00 2A */	fadds f1, f1, f0
lbl_80271BC8:
/* 80271BC8  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80271BCC  41 80 FF F8 */	blt lbl_80271BC4
/* 80271BD0  4E 80 00 20 */	blr 
