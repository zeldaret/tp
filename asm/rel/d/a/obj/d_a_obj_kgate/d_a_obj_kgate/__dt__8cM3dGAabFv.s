lbl_8058A9B4:
/* 8058A9B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058A9B8  7C 08 02 A6 */	mflr r0
/* 8058A9BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058A9C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058A9C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8058A9C8  41 82 00 1C */	beq lbl_8058A9E4
/* 8058A9CC  3C A0 80 59 */	lis r5, __vt__8cM3dGAab@ha /* 0x8058AE64@ha */
/* 8058A9D0  38 05 AE 64 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x8058AE64@l */
/* 8058A9D4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8058A9D8  7C 80 07 35 */	extsh. r0, r4
/* 8058A9DC  40 81 00 08 */	ble lbl_8058A9E4
/* 8058A9E0  4B D4 43 5D */	bl __dl__FPv
lbl_8058A9E4:
/* 8058A9E4  7F E3 FB 78 */	mr r3, r31
/* 8058A9E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058A9EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058A9F0  7C 08 03 A6 */	mtlr r0
/* 8058A9F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8058A9F8  4E 80 00 20 */	blr 
