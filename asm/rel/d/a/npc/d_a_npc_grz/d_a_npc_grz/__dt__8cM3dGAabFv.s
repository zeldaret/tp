lbl_809E8878:
/* 809E8878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E887C  7C 08 02 A6 */	mflr r0
/* 809E8880  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E8884  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E8888  7C 7F 1B 79 */	or. r31, r3, r3
/* 809E888C  41 82 00 1C */	beq lbl_809E88A8
/* 809E8890  3C A0 80 9F */	lis r5, __vt__8cM3dGAab@ha /* 0x809EFBC4@ha */
/* 809E8894  38 05 FB C4 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x809EFBC4@l */
/* 809E8898  90 1F 00 18 */	stw r0, 0x18(r31)
/* 809E889C  7C 80 07 35 */	extsh. r0, r4
/* 809E88A0  40 81 00 08 */	ble lbl_809E88A8
/* 809E88A4  4B 8E 64 99 */	bl __dl__FPv
lbl_809E88A8:
/* 809E88A8  7F E3 FB 78 */	mr r3, r31
/* 809E88AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E88B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E88B4  7C 08 03 A6 */	mtlr r0
/* 809E88B8  38 21 00 10 */	addi r1, r1, 0x10
/* 809E88BC  4E 80 00 20 */	blr 
