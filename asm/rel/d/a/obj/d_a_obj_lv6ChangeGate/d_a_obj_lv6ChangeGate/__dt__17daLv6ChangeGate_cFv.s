lbl_80C72034:
/* 80C72034  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C72038  7C 08 02 A6 */	mflr r0
/* 80C7203C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C72040  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C72044  93 C1 00 08 */	stw r30, 8(r1)
/* 80C72048  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C7204C  7C 9F 23 78 */	mr r31, r4
/* 80C72050  41 82 00 CC */	beq lbl_80C7211C
/* 80C72054  3C 60 80 C7 */	lis r3, __vt__17daLv6ChangeGate_c@ha
/* 80C72058  38 63 23 08 */	addi r3, r3, __vt__17daLv6ChangeGate_c@l
/* 80C7205C  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80C72060  38 03 00 28 */	addi r0, r3, 0x28
/* 80C72064  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80C72068  38 7E 06 04 */	addi r3, r30, 0x604
/* 80C7206C  3C 80 80 C7 */	lis r4, __dt__8dCcD_CylFv@ha
/* 80C72070  38 84 10 6C */	addi r4, r4, __dt__8dCcD_CylFv@l
/* 80C72074  38 A0 01 3C */	li r5, 0x13c
/* 80C72078  38 C0 00 0C */	li r6, 0xc
/* 80C7207C  4B 6E FC 6C */	b __destroy_arr
/* 80C72080  34 1E 05 C8 */	addic. r0, r30, 0x5c8
/* 80C72084  41 82 00 54 */	beq lbl_80C720D8
/* 80C72088  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C7208C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C72090  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80C72094  38 03 00 20 */	addi r0, r3, 0x20
/* 80C72098  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80C7209C  34 1E 05 E4 */	addic. r0, r30, 0x5e4
/* 80C720A0  41 82 00 24 */	beq lbl_80C720C4
/* 80C720A4  3C 60 80 C7 */	lis r3, __vt__10dCcD_GStts@ha
/* 80C720A8  38 03 22 CC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80C720AC  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80C720B0  34 1E 05 E4 */	addic. r0, r30, 0x5e4
/* 80C720B4  41 82 00 10 */	beq lbl_80C720C4
/* 80C720B8  3C 60 80 C7 */	lis r3, __vt__10cCcD_GStts@ha
/* 80C720BC  38 03 22 C0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80C720C0  90 1E 05 E4 */	stw r0, 0x5e4(r30)
lbl_80C720C4:
/* 80C720C4  34 1E 05 C8 */	addic. r0, r30, 0x5c8
/* 80C720C8  41 82 00 10 */	beq lbl_80C720D8
/* 80C720CC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C720D0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C720D4  90 1E 05 E0 */	stw r0, 0x5e0(r30)
lbl_80C720D8:
/* 80C720D8  34 1E 05 A8 */	addic. r0, r30, 0x5a8
/* 80C720DC  41 82 00 10 */	beq lbl_80C720EC
/* 80C720E0  3C 60 80 C7 */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80C720E4  38 03 22 F0 */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80C720E8  90 1E 05 A8 */	stw r0, 0x5a8(r30)
lbl_80C720EC:
/* 80C720EC  28 1E 00 00 */	cmplwi r30, 0
/* 80C720F0  41 82 00 1C */	beq lbl_80C7210C
/* 80C720F4  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha
/* 80C720F8  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l
/* 80C720FC  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C72100  7F C3 F3 78 */	mr r3, r30
/* 80C72104  38 80 00 00 */	li r4, 0
/* 80C72108  4B 3A 6B 84 */	b __dt__10fopAc_ac_cFv
lbl_80C7210C:
/* 80C7210C  7F E0 07 35 */	extsh. r0, r31
/* 80C72110  40 81 00 0C */	ble lbl_80C7211C
/* 80C72114  7F C3 F3 78 */	mr r3, r30
/* 80C72118  4B 65 CC 24 */	b __dl__FPv
lbl_80C7211C:
/* 80C7211C  7F C3 F3 78 */	mr r3, r30
/* 80C72120  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C72124  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C72128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7212C  7C 08 03 A6 */	mtlr r0
/* 80C72130  38 21 00 10 */	addi r1, r1, 0x10
/* 80C72134  4E 80 00 20 */	blr 
