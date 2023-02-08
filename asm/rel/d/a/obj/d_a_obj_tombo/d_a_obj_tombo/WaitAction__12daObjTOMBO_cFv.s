lbl_80D19658:
/* 80D19658  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D1965C  7C 08 02 A6 */	mflr r0
/* 80D19660  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D19664  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D19668  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D1966C  7C 7E 1B 78 */	mr r30, r3
/* 80D19670  3C 60 80 D2 */	lis r3, lit_3775@ha /* 0x80D1B6D8@ha */
/* 80D19674  3B E3 B6 D8 */	addi r31, r3, lit_3775@l /* 0x80D1B6D8@l */
/* 80D19678  88 1E 07 12 */	lbz r0, 0x712(r30)
/* 80D1967C  2C 00 00 01 */	cmpwi r0, 1
/* 80D19680  41 82 00 54 */	beq lbl_80D196D4
/* 80D19684  40 80 00 A0 */	bge lbl_80D19724
/* 80D19688  2C 00 00 00 */	cmpwi r0, 0
/* 80D1968C  40 80 00 08 */	bge lbl_80D19694
/* 80D19690  48 00 00 94 */	b lbl_80D19724
lbl_80D19694:
/* 80D19694  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80D19698  C0 1E 07 1C */	lfs f0, 0x71c(r30)
/* 80D1969C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D196A0  D0 1E 07 1C */	stfs f0, 0x71c(r30)
/* 80D196A4  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80D196A8  4B 54 E2 AD */	bl cM_rndF__Ff
/* 80D196AC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80D196B0  EC 00 08 2A */	fadds f0, f0, f1
/* 80D196B4  FC 00 00 1E */	fctiwz f0, f0
/* 80D196B8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80D196BC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80D196C0  B0 1E 07 14 */	sth r0, 0x714(r30)
/* 80D196C4  88 7E 07 12 */	lbz r3, 0x712(r30)
/* 80D196C8  38 03 00 01 */	addi r0, r3, 1
/* 80D196CC  98 1E 07 12 */	stb r0, 0x712(r30)
/* 80D196D0  48 00 00 54 */	b lbl_80D19724
lbl_80D196D4:
/* 80D196D4  A8 1E 07 14 */	lha r0, 0x714(r30)
/* 80D196D8  2C 00 00 00 */	cmpwi r0, 0
/* 80D196DC  40 82 00 48 */	bne lbl_80D19724
/* 80D196E0  38 00 00 01 */	li r0, 1
/* 80D196E4  98 1E 07 11 */	stb r0, 0x711(r30)
/* 80D196E8  38 00 00 00 */	li r0, 0
/* 80D196EC  98 1E 07 12 */	stb r0, 0x712(r30)
/* 80D196F0  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80D196F4  4B 54 E2 61 */	bl cM_rndF__Ff
/* 80D196F8  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80D196FC  EC 00 08 2A */	fadds f0, f0, f1
/* 80D19700  FC 00 00 1E */	fctiwz f0, f0
/* 80D19704  D8 01 00 08 */	stfd f0, 8(r1)
/* 80D19708  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80D1970C  B0 1E 07 14 */	sth r0, 0x714(r30)
/* 80D19710  A8 1E 07 16 */	lha r0, 0x716(r30)
/* 80D19714  2C 00 00 00 */	cmpwi r0, 0
/* 80D19718  40 82 00 0C */	bne lbl_80D19724
/* 80D1971C  7F C3 F3 78 */	mr r3, r30
/* 80D19720  48 00 05 15 */	bl SearchLink__12daObjTOMBO_cFv
lbl_80D19724:
/* 80D19724  7F C3 F3 78 */	mr r3, r30
/* 80D19728  48 00 00 1D */	bl SpeedSet__12daObjTOMBO_cFv
/* 80D1972C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D19730  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D19734  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D19738  7C 08 03 A6 */	mtlr r0
/* 80D1973C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D19740  4E 80 00 20 */	blr 
