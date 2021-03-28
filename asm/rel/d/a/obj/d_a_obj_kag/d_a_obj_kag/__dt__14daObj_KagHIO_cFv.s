lbl_80C31060:
/* 80C31060  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C31064  7C 08 02 A6 */	mflr r0
/* 80C31068  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3106C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C31070  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C31074  41 82 00 1C */	beq lbl_80C31090
/* 80C31078  3C A0 80 C3 */	lis r5, __vt__14daObj_KagHIO_c@ha
/* 80C3107C  38 05 14 1C */	addi r0, r5, __vt__14daObj_KagHIO_c@l
/* 80C31080  90 1F 00 00 */	stw r0, 0(r31)
/* 80C31084  7C 80 07 35 */	extsh. r0, r4
/* 80C31088  40 81 00 08 */	ble lbl_80C31090
/* 80C3108C  4B 69 DC B0 */	b __dl__FPv
lbl_80C31090:
/* 80C31090  7F E3 FB 78 */	mr r3, r31
/* 80C31094  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C31098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3109C  7C 08 03 A6 */	mtlr r0
/* 80C310A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C310A4  4E 80 00 20 */	blr 
