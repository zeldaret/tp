lbl_80C26124:
/* 80C26124  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C26128  7C 08 02 A6 */	mflr r0
/* 80C2612C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C26130  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C26134  93 C1 00 08 */	stw r30, 8(r1)
/* 80C26138  7C 7E 1B 78 */	mr r30, r3
/* 80C2613C  3C 80 80 C2 */	lis r4, lit_3841@ha
/* 80C26140  3B E4 68 88 */	addi r31, r4, lit_3841@l
/* 80C26144  A8 03 05 7E */	lha r0, 0x57e(r3)
/* 80C26148  2C 00 00 01 */	cmpwi r0, 1
/* 80C2614C  41 82 00 1C */	beq lbl_80C26168
/* 80C26150  40 80 00 1C */	bge lbl_80C2616C
/* 80C26154  2C 00 00 00 */	cmpwi r0, 0
/* 80C26158  40 80 00 08 */	bge lbl_80C26160
/* 80C2615C  48 00 00 10 */	b lbl_80C2616C
lbl_80C26160:
/* 80C26160  4B FF FF BD */	bl ih_normal__FP15obj_ihasi_class
/* 80C26164  48 00 00 08 */	b lbl_80C2616C
lbl_80C26168:
/* 80C26168  4B FF FF B9 */	bl ih_disappear__FP15obj_ihasi_class
lbl_80C2616C:
/* 80C2616C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C26170  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C26174  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80C26178  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80C2617C  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80C26180  4B 72 07 68 */	b PSMTXTrans
/* 80C26184  A8 1E 05 7E */	lha r0, 0x57e(r30)
/* 80C26188  2C 00 00 01 */	cmpwi r0, 1
/* 80C2618C  40 82 00 34 */	bne lbl_80C261C0
/* 80C26190  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C26194  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80C26198  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80C2619C  4B 3E 6C 00 */	b transM__14mDoMtx_stack_cFfff
/* 80C261A0  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80C261A4  4B 3E 72 84 */	b play__14mDoExt_baseAnmFv
/* 80C261A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C261AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C261B0  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80C261B4  38 84 00 24 */	addi r4, r4, 0x24
/* 80C261B8  4B 72 02 F8 */	b PSMTXCopy
/* 80C261BC  48 00 00 30 */	b lbl_80C261EC
lbl_80C261C0:
/* 80C261C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C261C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C261C8  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80C261CC  38 84 00 24 */	addi r4, r4, 0x24
/* 80C261D0  4B 72 02 E0 */	b PSMTXCopy
/* 80C261D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C261D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C261DC  38 9E 05 88 */	addi r4, r30, 0x588
/* 80C261E0  4B 72 02 D0 */	b PSMTXCopy
/* 80C261E4  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80C261E8  4B 45 57 D8 */	b Move__4dBgWFv
lbl_80C261EC:
/* 80C261EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C261F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C261F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C261F8  7C 08 03 A6 */	mtlr r0
/* 80C261FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C26200  4E 80 00 20 */	blr 
