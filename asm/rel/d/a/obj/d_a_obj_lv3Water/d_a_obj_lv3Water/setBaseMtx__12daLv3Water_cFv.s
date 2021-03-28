lbl_80C58838:
/* 80C58838  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5883C  7C 08 02 A6 */	mflr r0
/* 80C58840  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C58844  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C58848  7C 7F 1B 78 */	mr r31, r3
/* 80C5884C  80 03 05 C4 */	lwz r0, 0x5c4(r3)
/* 80C58850  28 00 00 00 */	cmplwi r0, 0
/* 80C58854  41 82 00 5C */	beq lbl_80C588B0
/* 80C58858  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C5885C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C58860  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C58864  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C58868  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C5886C  4B 6E E0 7C */	b PSMTXTrans
/* 80C58870  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C58874  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C58878  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C5887C  4B 3B 3B B8 */	b mDoMtx_YrotM__FPA4_fs
/* 80C58880  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 80C58884  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C58888  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C5888C  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C58890  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C58894  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C58898  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C5889C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C588A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C588A4  80 9F 05 C4 */	lwz r4, 0x5c4(r31)
/* 80C588A8  38 84 00 24 */	addi r4, r4, 0x24
/* 80C588AC  4B 6E DC 04 */	b PSMTXCopy
lbl_80C588B0:
/* 80C588B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C588B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C588B8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C588BC  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C588C0  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C588C4  4B 6E E0 24 */	b PSMTXTrans
/* 80C588C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C588CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C588D0  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C588D4  4B 3B 3B 60 */	b mDoMtx_YrotM__FPA4_fs
/* 80C588D8  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80C588DC  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C588E0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C588E4  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C588E8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C588EC  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C588F0  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C588F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C588F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C588FC  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 80C58900  38 84 00 24 */	addi r4, r4, 0x24
/* 80C58904  4B 6E DB AC */	b PSMTXCopy
/* 80C58908  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5890C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C58910  7C 08 03 A6 */	mtlr r0
/* 80C58914  38 21 00 10 */	addi r1, r1, 0x10
/* 80C58918  4E 80 00 20 */	blr 
