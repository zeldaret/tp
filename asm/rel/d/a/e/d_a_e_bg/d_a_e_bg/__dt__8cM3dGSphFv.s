lbl_8068A07C:
/* 8068A07C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068A080  7C 08 02 A6 */	mflr r0
/* 8068A084  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068A088  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8068A08C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8068A090  41 82 00 1C */	beq lbl_8068A0AC
/* 8068A094  3C A0 80 69 */	lis r5, __vt__8cM3dGSph@ha /* 0x8068A45C@ha */
/* 8068A098  38 05 A4 5C */	addi r0, r5, __vt__8cM3dGSph@l /* 0x8068A45C@l */
/* 8068A09C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8068A0A0  7C 80 07 35 */	extsh. r0, r4
/* 8068A0A4  40 81 00 08 */	ble lbl_8068A0AC
/* 8068A0A8  4B C4 4C 95 */	bl __dl__FPv
lbl_8068A0AC:
/* 8068A0AC  7F E3 FB 78 */	mr r3, r31
/* 8068A0B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8068A0B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068A0B8  7C 08 03 A6 */	mtlr r0
/* 8068A0BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8068A0C0  4E 80 00 20 */	blr 
