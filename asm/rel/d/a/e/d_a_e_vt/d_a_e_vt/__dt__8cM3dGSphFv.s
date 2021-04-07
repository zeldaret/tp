lbl_807CE064:
/* 807CE064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807CE068  7C 08 02 A6 */	mflr r0
/* 807CE06C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CE070  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807CE074  7C 7F 1B 79 */	or. r31, r3, r3
/* 807CE078  41 82 00 1C */	beq lbl_807CE094
/* 807CE07C  3C A0 80 7D */	lis r5, __vt__8cM3dGSph@ha /* 0x807CF3F8@ha */
/* 807CE080  38 05 F3 F8 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x807CF3F8@l */
/* 807CE084  90 1F 00 10 */	stw r0, 0x10(r31)
/* 807CE088  7C 80 07 35 */	extsh. r0, r4
/* 807CE08C  40 81 00 08 */	ble lbl_807CE094
/* 807CE090  4B B0 0C AD */	bl __dl__FPv
lbl_807CE094:
/* 807CE094  7F E3 FB 78 */	mr r3, r31
/* 807CE098  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807CE09C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807CE0A0  7C 08 03 A6 */	mtlr r0
/* 807CE0A4  38 21 00 10 */	addi r1, r1, 0x10
/* 807CE0A8  4E 80 00 20 */	blr 
