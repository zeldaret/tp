lbl_80C4E6E4:
/* 80C4E6E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4E6E8  7C 08 02 A6 */	mflr r0
/* 80C4E6EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4E6F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4E6F4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C4E6F8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C4E6FC  7C 9F 23 78 */	mr r31, r4
/* 80C4E700  41 82 00 CC */	beq lbl_80C4E7CC
/* 80C4E704  3C 60 80 C5 */	lis r3, __vt__15daObjKWheel00_c@ha
/* 80C4E708  38 63 E9 B8 */	addi r3, r3, __vt__15daObjKWheel00_c@l
/* 80C4E70C  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80C4E710  38 03 00 28 */	addi r0, r3, 0x28
/* 80C4E714  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80C4E718  38 7E 06 60 */	addi r3, r30, 0x660
/* 80C4E71C  3C 80 80 C5 */	lis r4, __dt__8dCcD_SphFv@ha
/* 80C4E720  38 84 E3 94 */	addi r4, r4, __dt__8dCcD_SphFv@l
/* 80C4E724  38 A0 01 38 */	li r5, 0x138
/* 80C4E728  38 C0 00 04 */	li r6, 4
/* 80C4E72C  4B 71 35 BC */	b __destroy_arr
/* 80C4E730  34 1E 06 24 */	addic. r0, r30, 0x624
/* 80C4E734  41 82 00 54 */	beq lbl_80C4E788
/* 80C4E738  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C4E73C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C4E740  90 7E 06 3C */	stw r3, 0x63c(r30)
/* 80C4E744  38 03 00 20 */	addi r0, r3, 0x20
/* 80C4E748  90 1E 06 40 */	stw r0, 0x640(r30)
/* 80C4E74C  34 1E 06 40 */	addic. r0, r30, 0x640
/* 80C4E750  41 82 00 24 */	beq lbl_80C4E774
/* 80C4E754  3C 60 80 C5 */	lis r3, __vt__10dCcD_GStts@ha
/* 80C4E758  38 03 E9 7C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80C4E75C  90 1E 06 40 */	stw r0, 0x640(r30)
/* 80C4E760  34 1E 06 40 */	addic. r0, r30, 0x640
/* 80C4E764  41 82 00 10 */	beq lbl_80C4E774
/* 80C4E768  3C 60 80 C5 */	lis r3, __vt__10cCcD_GStts@ha
/* 80C4E76C  38 03 E9 70 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80C4E770  90 1E 06 40 */	stw r0, 0x640(r30)
lbl_80C4E774:
/* 80C4E774  34 1E 06 24 */	addic. r0, r30, 0x624
/* 80C4E778  41 82 00 10 */	beq lbl_80C4E788
/* 80C4E77C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C4E780  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C4E784  90 1E 06 3C */	stw r0, 0x63c(r30)
lbl_80C4E788:
/* 80C4E788  34 1E 05 A8 */	addic. r0, r30, 0x5a8
/* 80C4E78C  41 82 00 10 */	beq lbl_80C4E79C
/* 80C4E790  3C 60 80 C5 */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80C4E794  38 03 E9 A0 */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80C4E798  90 1E 05 A8 */	stw r0, 0x5a8(r30)
lbl_80C4E79C:
/* 80C4E79C  28 1E 00 00 */	cmplwi r30, 0
/* 80C4E7A0  41 82 00 1C */	beq lbl_80C4E7BC
/* 80C4E7A4  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha
/* 80C4E7A8  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l
/* 80C4E7AC  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C4E7B0  7F C3 F3 78 */	mr r3, r30
/* 80C4E7B4  38 80 00 00 */	li r4, 0
/* 80C4E7B8  4B 3C A4 D4 */	b __dt__10fopAc_ac_cFv
lbl_80C4E7BC:
/* 80C4E7BC  7F E0 07 35 */	extsh. r0, r31
/* 80C4E7C0  40 81 00 0C */	ble lbl_80C4E7CC
/* 80C4E7C4  7F C3 F3 78 */	mr r3, r30
/* 80C4E7C8  4B 68 05 74 */	b __dl__FPv
lbl_80C4E7CC:
/* 80C4E7CC  7F C3 F3 78 */	mr r3, r30
/* 80C4E7D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4E7D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C4E7D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4E7DC  7C 08 03 A6 */	mtlr r0
/* 80C4E7E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4E7E4  4E 80 00 20 */	blr 
