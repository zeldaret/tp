lbl_8061D064:
/* 8061D064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061D068  7C 08 02 A6 */	mflr r0
/* 8061D06C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061D070  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061D074  7C 7F 1B 78 */	mr r31, r3
/* 8061D078  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8061D07C  3C 80 80 62 */	lis r4, stringBase0@ha
/* 8061D080  38 84 DA 74 */	addi r4, r4, stringBase0@l
/* 8061D084  4B A0 FF 84 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8061D088  88 1F 1F 86 */	lbz r0, 0x1f86(r31)
/* 8061D08C  28 00 00 00 */	cmplwi r0, 0
/* 8061D090  41 82 00 10 */	beq lbl_8061D0A0
/* 8061D094  38 00 00 00 */	li r0, 0
/* 8061D098  3C 60 80 62 */	lis r3, struct_8061DBB4+0x1@ha
/* 8061D09C  98 03 DB B5 */	stb r0, struct_8061DBB4+0x1@l(r3)
lbl_8061D0A0:
/* 8061D0A0  38 60 00 01 */	li r3, 1
/* 8061D0A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061D0A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061D0AC  7C 08 03 A6 */	mtlr r0
/* 8061D0B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8061D0B4  4E 80 00 20 */	blr 
