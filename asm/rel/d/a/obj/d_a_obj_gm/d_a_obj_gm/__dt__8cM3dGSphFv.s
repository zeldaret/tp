lbl_80BFD06C:
/* 80BFD06C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFD070  7C 08 02 A6 */	mflr r0
/* 80BFD074  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFD078  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFD07C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BFD080  41 82 00 1C */	beq lbl_80BFD09C
/* 80BFD084  3C A0 80 C0 */	lis r5, __vt__8cM3dGSph@ha /* 0x80BFD548@ha */
/* 80BFD088  38 05 D5 48 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80BFD548@l */
/* 80BFD08C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80BFD090  7C 80 07 35 */	extsh. r0, r4
/* 80BFD094  40 81 00 08 */	ble lbl_80BFD09C
/* 80BFD098  4B 6D 1C A5 */	bl __dl__FPv
lbl_80BFD09C:
/* 80BFD09C  7F E3 FB 78 */	mr r3, r31
/* 80BFD0A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFD0A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFD0A8  7C 08 03 A6 */	mtlr r0
/* 80BFD0AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFD0B0  4E 80 00 20 */	blr 
