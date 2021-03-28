lbl_80CC14E0:
/* 80CC14E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC14E4  7C 08 02 A6 */	mflr r0
/* 80CC14E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC14EC  3C 60 80 CC */	lis r3, data_80CC26F8@ha
/* 80CC14F0  38 63 26 F8 */	addi r3, r3, data_80CC26F8@l
/* 80CC14F4  4B 5A 1C 58 */	b ModuleConstructorsX
/* 80CC14F8  4B 5A 1B 90 */	b ModuleProlog
/* 80CC14FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC1500  7C 08 03 A6 */	mtlr r0
/* 80CC1504  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC1508  4E 80 00 20 */	blr 
