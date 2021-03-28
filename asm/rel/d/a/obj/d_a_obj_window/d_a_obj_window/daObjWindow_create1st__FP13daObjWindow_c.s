lbl_80D39034:
/* 80D39034  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D39038  7C 08 02 A6 */	mflr r0
/* 80D3903C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D39040  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D39044  93 C1 00 08 */	stw r30, 8(r1)
/* 80D39048  7C 7F 1B 78 */	mr r31, r3
/* 80D3904C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D39050  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D39054  40 82 00 B4 */	bne lbl_80D39108
/* 80D39058  7F E0 FB 79 */	or. r0, r31, r31
/* 80D3905C  41 82 00 A0 */	beq lbl_80D390FC
/* 80D39060  7C 1E 03 78 */	mr r30, r0
/* 80D39064  4B 33 F5 C0 */	b __ct__16dBgS_MoveBgActorFv
/* 80D39068  3C 60 80 D4 */	lis r3, __vt__13daObjWindow_c@ha
/* 80D3906C  38 03 93 40 */	addi r0, r3, __vt__13daObjWindow_c@l
/* 80D39070  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80D39074  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D39078  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D3907C  90 1E 05 CC */	stw r0, 0x5cc(r30)
/* 80D39080  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80D39084  4B 34 A6 DC */	b __ct__10dCcD_GSttsFv
/* 80D39088  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D3908C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D39090  90 7E 05 CC */	stw r3, 0x5cc(r30)
/* 80D39094  38 03 00 20 */	addi r0, r3, 0x20
/* 80D39098  90 1E 05 D0 */	stw r0, 0x5d0(r30)
/* 80D3909C  3B DE 05 F0 */	addi r30, r30, 0x5f0
/* 80D390A0  7F C3 F3 78 */	mr r3, r30
/* 80D390A4  4B 34 A9 84 */	b __ct__12dCcD_GObjInfFv
/* 80D390A8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D390AC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D390B0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D390B4  3C 60 80 D4 */	lis r3, __vt__8cM3dGAab@ha
/* 80D390B8  38 03 93 28 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D390BC  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80D390C0  3C 60 80 D4 */	lis r3, __vt__8cM3dGCyl@ha
/* 80D390C4  38 03 93 1C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80D390C8  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80D390CC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80D390D0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80D390D4  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80D390D8  38 03 00 58 */	addi r0, r3, 0x58
/* 80D390DC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80D390E0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80D390E4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80D390E8  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80D390EC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D390F0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D390F4  38 03 00 84 */	addi r0, r3, 0x84
/* 80D390F8  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80D390FC:
/* 80D390FC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D39100  60 00 00 08 */	ori r0, r0, 8
/* 80D39104  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D39108:
/* 80D39108  7F E3 FB 78 */	mr r3, r31
/* 80D3910C  4B FF F9 5D */	bl create1st__13daObjWindow_cFv
/* 80D39110  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D39114  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D39118  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3911C  7C 08 03 A6 */	mtlr r0
/* 80D39120  38 21 00 10 */	addi r1, r1, 0x10
/* 80D39124  4E 80 00 20 */	blr 
