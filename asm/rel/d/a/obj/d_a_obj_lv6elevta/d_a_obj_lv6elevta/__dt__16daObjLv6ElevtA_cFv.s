lbl_80C83764:
/* 80C83764  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C83768  7C 08 02 A6 */	mflr r0
/* 80C8376C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C83770  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C83774  93 C1 00 08 */	stw r30, 8(r1)
/* 80C83778  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C8377C  7C 9F 23 78 */	mr r31, r4
/* 80C83780  41 82 00 5C */	beq lbl_80C837DC
/* 80C83784  3C 60 80 C8 */	lis r3, __vt__16daObjLv6ElevtA_c@ha /* 0x80C838C0@ha */
/* 80C83788  38 63 38 C0 */	addi r3, r3, __vt__16daObjLv6ElevtA_c@l /* 0x80C838C0@l */
/* 80C8378C  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80C83790  38 03 00 28 */	addi r0, r3, 0x28
/* 80C83794  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80C83798  34 1E 05 A8 */	addic. r0, r30, 0x5a8
/* 80C8379C  41 82 00 10 */	beq lbl_80C837AC
/* 80C837A0  3C 60 80 C8 */	lis r3, __vt__17dEvLib_callback_c@ha /* 0x80C838A8@ha */
/* 80C837A4  38 03 38 A8 */	addi r0, r3, __vt__17dEvLib_callback_c@l /* 0x80C838A8@l */
/* 80C837A8  90 1E 05 A8 */	stw r0, 0x5a8(r30)
lbl_80C837AC:
/* 80C837AC  28 1E 00 00 */	cmplwi r30, 0
/* 80C837B0  41 82 00 1C */	beq lbl_80C837CC
/* 80C837B4  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha /* 0x803AB9A0@ha */
/* 80C837B8  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l /* 0x803AB9A0@l */
/* 80C837BC  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C837C0  7F C3 F3 78 */	mr r3, r30
/* 80C837C4  38 80 00 00 */	li r4, 0
/* 80C837C8  4B 39 54 C5 */	bl __dt__10fopAc_ac_cFv
lbl_80C837CC:
/* 80C837CC  7F E0 07 35 */	extsh. r0, r31
/* 80C837D0  40 81 00 0C */	ble lbl_80C837DC
/* 80C837D4  7F C3 F3 78 */	mr r3, r30
/* 80C837D8  4B 64 B5 65 */	bl __dl__FPv
lbl_80C837DC:
/* 80C837DC  7F C3 F3 78 */	mr r3, r30
/* 80C837E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C837E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C837E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C837EC  7C 08 03 A6 */	mtlr r0
/* 80C837F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C837F4  4E 80 00 20 */	blr 
