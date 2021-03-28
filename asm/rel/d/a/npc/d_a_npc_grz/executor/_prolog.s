lbl_809E8320:
/* 809E8320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E8324  7C 08 02 A6 */	mflr r0
/* 809E8328  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E832C  3C 60 80 9F */	lis r3, data_809EF1E0@ha
/* 809E8330  38 63 F1 E0 */	addi r3, r3, data_809EF1E0@l
/* 809E8334  4B 87 AE 18 */	b ModuleConstructorsX
/* 809E8338  4B 87 AD 50 */	b ModuleProlog
/* 809E833C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E8340  7C 08 03 A6 */	mtlr r0
/* 809E8344  38 21 00 10 */	addi r1, r1, 0x10
/* 809E8348  4E 80 00 20 */	blr 
