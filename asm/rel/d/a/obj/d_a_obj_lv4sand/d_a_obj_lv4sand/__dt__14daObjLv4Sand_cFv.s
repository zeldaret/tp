lbl_80C6A30C:
/* 80C6A30C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6A310  7C 08 02 A6 */	mflr r0
/* 80C6A314  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6A318  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6A31C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C6A320  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C6A324  7C 9F 23 78 */	mr r31, r4
/* 80C6A328  41 82 00 5C */	beq lbl_80C6A384
/* 80C6A32C  3C 60 80 C7 */	lis r3, __vt__14daObjLv4Sand_c@ha /* 0x80C6A4C0@ha */
/* 80C6A330  38 63 A4 C0 */	addi r3, r3, __vt__14daObjLv4Sand_c@l /* 0x80C6A4C0@l */
/* 80C6A334  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80C6A338  38 03 00 28 */	addi r0, r3, 0x28
/* 80C6A33C  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 80C6A340  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80C6A344  41 82 00 10 */	beq lbl_80C6A354
/* 80C6A348  3C 60 80 C7 */	lis r3, __vt__17dEvLib_callback_c@ha /* 0x80C6A49C@ha */
/* 80C6A34C  38 03 A4 9C */	addi r0, r3, __vt__17dEvLib_callback_c@l /* 0x80C6A49C@l */
/* 80C6A350  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80C6A354:
/* 80C6A354  28 1E 00 00 */	cmplwi r30, 0
/* 80C6A358  41 82 00 1C */	beq lbl_80C6A374
/* 80C6A35C  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha /* 0x803AB9A0@ha */
/* 80C6A360  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l /* 0x803AB9A0@l */
/* 80C6A364  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C6A368  7F C3 F3 78 */	mr r3, r30
/* 80C6A36C  38 80 00 00 */	li r4, 0
/* 80C6A370  4B 3A E9 1D */	bl __dt__10fopAc_ac_cFv
lbl_80C6A374:
/* 80C6A374  7F E0 07 35 */	extsh. r0, r31
/* 80C6A378  40 81 00 0C */	ble lbl_80C6A384
/* 80C6A37C  7F C3 F3 78 */	mr r3, r30
/* 80C6A380  4B 66 49 BD */	bl __dl__FPv
lbl_80C6A384:
/* 80C6A384  7F C3 F3 78 */	mr r3, r30
/* 80C6A388  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6A38C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C6A390  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6A394  7C 08 03 A6 */	mtlr r0
/* 80C6A398  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6A39C  4E 80 00 20 */	blr 
