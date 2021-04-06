lbl_8046E4D8:
/* 8046E4D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046E4DC  7C 08 02 A6 */	mflr r0
/* 8046E4E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046E4E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046E4E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8046E4EC  41 82 00 1C */	beq lbl_8046E508
/* 8046E4F0  3C A0 80 47 */	lis r5, __vt__8cM3dGAab@ha /* 0x8046E5F8@ha */
/* 8046E4F4  38 05 E5 F8 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x8046E5F8@l */
/* 8046E4F8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8046E4FC  7C 80 07 35 */	extsh. r0, r4
/* 8046E500  40 81 00 08 */	ble lbl_8046E508
/* 8046E504  4B E6 08 39 */	bl __dl__FPv
lbl_8046E508:
/* 8046E508  7F E3 FB 78 */	mr r3, r31
/* 8046E50C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046E510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046E514  7C 08 03 A6 */	mtlr r0
/* 8046E518  38 21 00 10 */	addi r1, r1, 0x10
/* 8046E51C  4E 80 00 20 */	blr 
