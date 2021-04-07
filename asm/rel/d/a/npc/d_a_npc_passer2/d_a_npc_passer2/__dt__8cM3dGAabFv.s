lbl_80AA8888:
/* 80AA8888  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA888C  7C 08 02 A6 */	mflr r0
/* 80AA8890  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA8894  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA8898  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA889C  41 82 00 1C */	beq lbl_80AA88B8
/* 80AA88A0  3C A0 80 AB */	lis r5, __vt__8cM3dGAab@ha /* 0x80AA8B44@ha */
/* 80AA88A4  38 05 8B 44 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80AA8B44@l */
/* 80AA88A8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80AA88AC  7C 80 07 35 */	extsh. r0, r4
/* 80AA88B0  40 81 00 08 */	ble lbl_80AA88B8
/* 80AA88B4  4B 82 64 89 */	bl __dl__FPv
lbl_80AA88B8:
/* 80AA88B8  7F E3 FB 78 */	mr r3, r31
/* 80AA88BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA88C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA88C4  7C 08 03 A6 */	mtlr r0
/* 80AA88C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA88CC  4E 80 00 20 */	blr 
