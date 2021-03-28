lbl_805A83A0:
/* 805A83A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A83A4  7C 08 02 A6 */	mflr r0
/* 805A83A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A83AC  3C 60 80 5B */	lis r3, data_805A8FA8@ha
/* 805A83B0  38 63 8F A8 */	addi r3, r3, data_805A8FA8@l
/* 805A83B4  4B CB AD 98 */	b ModuleConstructorsX
/* 805A83B8  4B CB AC D0 */	b ModuleProlog
/* 805A83BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A83C0  7C 08 03 A6 */	mtlr r0
/* 805A83C4  38 21 00 10 */	addi r1, r1, 0x10
/* 805A83C8  4E 80 00 20 */	blr 
