lbl_800858AC:
/* 800858AC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 800858B0  7C 08 02 A6 */	mflr r0
/* 800858B4  90 01 00 84 */	stw r0, 0x84(r1)
/* 800858B8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 800858BC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 800858C0  39 61 00 70 */	addi r11, r1, 0x70
/* 800858C4  48 2D C9 01 */	bl _savegpr_23
/* 800858C8  7C 78 1B 78 */	mr r24, r3
/* 800858CC  7C 99 23 78 */	mr r25, r4
/* 800858D0  7C BA 2B 78 */	mr r26, r5
/* 800858D4  7C DB 33 78 */	mr r27, r6
/* 800858D8  3C 60 80 3A */	lis r3, __vt__15cCcD_DivideInfo@ha
/* 800858DC  38 03 72 24 */	addi r0, r3, __vt__15cCcD_DivideInfo@l
/* 800858E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 800858E4  3B C0 00 00 */	li r30, 0
/* 800858E8  38 00 00 00 */	li r0, 0
/* 800858EC  90 05 00 00 */	stw r0, 0(r5)
/* 800858F0  38 78 01 E8 */	addi r3, r24, 0x1e8
/* 800858F4  48 1E 98 E9 */	bl SetC__8cM3dGCylFRC4cXyz
/* 800858F8  38 78 01 C8 */	addi r3, r24, 0x1c8
/* 800858FC  81 98 01 E4 */	lwz r12, 0x1e4(r24)
/* 80085900  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80085904  7D 89 03 A6 */	mtctr r12
/* 80085908  4E 80 04 21 */	bctrl 
/* 8008590C  7F 03 C3 78 */	mr r3, r24
/* 80085910  38 81 00 38 */	addi r4, r1, 0x38
/* 80085914  38 B8 01 C8 */	addi r5, r24, 0x1c8
/* 80085918  48 1D DD 89 */	bl CalcDivideInfoOverArea__15cCcD_DivideAreaFP15cCcD_DivideInfoRC8cM3dGAab
/* 8008591C  7F 63 DB 78 */	mr r3, r27
/* 80085920  4B FF FA 15 */	bl ClearPointer__15dCcMassS_HitInfFv
/* 80085924  88 18 02 00 */	lbz r0, 0x200(r24)
/* 80085928  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8008592C  41 82 00 C4 */	beq lbl_800859F0
/* 80085930  3B F8 01 88 */	addi r31, r24, 0x188
/* 80085934  48 00 00 A4 */	b lbl_800859D8
lbl_80085938:
/* 80085938  38 7F 00 0C */	addi r3, r31, 0xc
/* 8008593C  38 81 00 38 */	addi r4, r1, 0x38
/* 80085940  48 1D DA 29 */	bl Chk__15cCcD_DivideInfoCFRC15cCcD_DivideInfo
/* 80085944  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80085948  41 82 00 8C */	beq lbl_800859D4
/* 8008594C  82 FF 00 00 */	lwz r23, 0(r31)
/* 80085950  7E E3 BB 78 */	mr r3, r23
/* 80085954  81 97 00 3C */	lwz r12, 0x3c(r23)
/* 80085958  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8008595C  7D 89 03 A6 */	mtctr r12
/* 80085960  4E 80 04 21 */	bctrl 
/* 80085964  7C 64 1B 78 */	mr r4, r3
/* 80085968  80 17 00 2C */	lwz r0, 0x2c(r23)
/* 8008596C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80085970  41 82 00 64 */	beq lbl_800859D4
/* 80085974  38 78 01 C8 */	addi r3, r24, 0x1c8
/* 80085978  38 A1 00 10 */	addi r5, r1, 0x10
/* 8008597C  81 98 01 E4 */	lwz r12, 0x1e4(r24)
/* 80085980  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80085984  7D 89 03 A6 */	mtctr r12
/* 80085988  4E 80 04 21 */	bctrl 
/* 8008598C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80085990  41 82 00 44 */	beq lbl_800859D4
/* 80085994  63 DE 00 04 */	ori r30, r30, 4
/* 80085998  80 77 00 44 */	lwz r3, 0x44(r23)
/* 8008599C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800859A0  90 1A 00 00 */	stw r0, 0(r26)
/* 800859A4  28 1B 00 00 */	cmplwi r27, 0
/* 800859A8  41 82 00 08 */	beq lbl_800859B0
/* 800859AC  92 FB 00 00 */	stw r23, 0(r27)
lbl_800859B0:
/* 800859B0  81 9F 00 08 */	lwz r12, 8(r31)
/* 800859B4  28 0C 00 00 */	cmplwi r12, 0
/* 800859B8  41 82 00 1C */	beq lbl_800859D4
/* 800859BC  80 77 00 44 */	lwz r3, 0x44(r23)
/* 800859C0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800859C4  7F 24 CB 78 */	mr r4, r25
/* 800859C8  88 B8 02 01 */	lbz r5, 0x201(r24)
/* 800859CC  7D 89 03 A6 */	mtctr r12
/* 800859D0  4E 80 04 21 */	bctrl 
lbl_800859D4:
/* 800859D4  3B FF 00 20 */	addi r31, r31, 0x20
lbl_800859D8:
/* 800859D8  80 18 01 84 */	lwz r0, 0x184(r24)
/* 800859DC  54 03 28 34 */	slwi r3, r0, 5
/* 800859E0  38 03 01 88 */	addi r0, r3, 0x188
/* 800859E4  7C 18 02 14 */	add r0, r24, r0
/* 800859E8  7C 1F 00 40 */	cmplw r31, r0
/* 800859EC  41 80 FF 4C */	blt lbl_80085938
lbl_800859F0:
/* 800859F0  3B B8 00 44 */	addi r29, r24, 0x44
/* 800859F4  48 00 01 8C */	b lbl_80085B80
lbl_800859F8:
/* 800859F8  38 7D 00 0C */	addi r3, r29, 0xc
/* 800859FC  38 81 00 38 */	addi r4, r1, 0x38
/* 80085A00  48 1D D9 69 */	bl Chk__15cCcD_DivideInfoCFRC15cCcD_DivideInfo
/* 80085A04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80085A08  41 82 01 74 */	beq lbl_80085B7C
/* 80085A0C  83 FD 00 00 */	lwz r31, 0(r29)
/* 80085A10  7F E3 FB 78 */	mr r3, r31
/* 80085A14  81 9F 00 3C */	lwz r12, 0x3c(r31)
/* 80085A18  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80085A1C  7D 89 03 A6 */	mtctr r12
/* 80085A20  4E 80 04 21 */	bctrl 
/* 80085A24  7C 77 1B 78 */	mr r23, r3
/* 80085A28  7F E3 FB 78 */	mr r3, r31
/* 80085A2C  81 9F 00 3C */	lwz r12, 0x3c(r31)
/* 80085A30  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80085A34  7D 89 03 A6 */	mtctr r12
/* 80085A38  4E 80 04 21 */	bctrl 
/* 80085A3C  7C 7C 1B 78 */	mr r28, r3
/* 80085A40  80 1F 00 00 */	lwz r0, 0(r31)
/* 80085A44  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80085A48  41 82 00 5C */	beq lbl_80085AA4
/* 80085A4C  80 17 00 58 */	lwz r0, 0x58(r23)
/* 80085A50  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80085A54  40 82 00 50 */	bne lbl_80085AA4
/* 80085A58  38 78 01 C8 */	addi r3, r24, 0x1c8
/* 80085A5C  7F 84 E3 78 */	mr r4, r28
/* 80085A60  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80085A64  81 98 01 E4 */	lwz r12, 0x1e4(r24)
/* 80085A68  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80085A6C  7D 89 03 A6 */	mtctr r12
/* 80085A70  4E 80 04 21 */	bctrl 
/* 80085A74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80085A78  41 82 00 2C */	beq lbl_80085AA4
/* 80085A7C  88 18 02 00 */	lbz r0, 0x200(r24)
/* 80085A80  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80085A84  41 82 00 20 */	beq lbl_80085AA4
/* 80085A88  63 DE 00 01 */	ori r30, r30, 1
/* 80085A8C  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80085A90  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80085A94  90 1A 00 00 */	stw r0, 0(r26)
/* 80085A98  28 1B 00 00 */	cmplwi r27, 0
/* 80085A9C  41 82 00 08 */	beq lbl_80085AA4
/* 80085AA0  93 FB 00 04 */	stw r31, 4(r27)
lbl_80085AA4:
/* 80085AA4  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 80085AA8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80085AAC  41 82 00 D0 */	beq lbl_80085B7C
/* 80085AB0  38 78 01 C8 */	addi r3, r24, 0x1c8
/* 80085AB4  7F 84 E3 78 */	mr r4, r28
/* 80085AB8  38 A1 00 0C */	addi r5, r1, 0xc
/* 80085ABC  81 98 01 E4 */	lwz r12, 0x1e4(r24)
/* 80085AC0  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80085AC4  7D 89 03 A6 */	mtctr r12
/* 80085AC8  4E 80 04 21 */	bctrl 
/* 80085ACC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80085AD0  41 82 00 AC */	beq lbl_80085B7C
/* 80085AD4  88 18 02 00 */	lbz r0, 0x200(r24)
/* 80085AD8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80085ADC  41 82 00 A0 */	beq lbl_80085B7C
/* 80085AE0  63 DE 00 02 */	ori r30, r30, 2
/* 80085AE4  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80085AE8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80085AEC  90 1A 00 00 */	stw r0, 0(r26)
/* 80085AF0  88 18 02 00 */	lbz r0, 0x200(r24)
/* 80085AF4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80085AF8  41 82 00 70 */	beq lbl_80085B68
/* 80085AFC  80 7A 00 00 */	lwz r3, 0(r26)
/* 80085B00  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80085B04  7F 24 CB 78 */	mr r4, r25
/* 80085B08  38 A1 00 20 */	addi r5, r1, 0x20
/* 80085B0C  48 2C 15 A9 */	bl PSVECSubtract
/* 80085B10  C0 02 8D 60 */	lfs f0, lit_3627(r2)
/* 80085B14  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80085B18  38 61 00 20 */	addi r3, r1, 0x20
/* 80085B1C  48 2C 16 35 */	bl PSVECMag
/* 80085B20  FC 00 0A 10 */	fabs f0, f1
/* 80085B24  FC 40 00 18 */	frsp f2, f0
/* 80085B28  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 80085B2C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80085B30  40 80 00 10 */	bge lbl_80085B40
/* 80085B34  C0 02 8D 6C */	lfs f0, lit_3899(r2)
/* 80085B38  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80085B3C  48 00 00 18 */	b lbl_80085B54
lbl_80085B40:
/* 80085B40  38 61 00 20 */	addi r3, r1, 0x20
/* 80085B44  7C 64 1B 78 */	mr r4, r3
/* 80085B48  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80085B4C  EC 20 08 24 */	fdivs f1, f0, f1
/* 80085B50  48 2C 15 89 */	bl PSVECScale
lbl_80085B54:
/* 80085B54  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80085B58  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80085B5C  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 80085B60  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 80085B64  48 1D DD D1 */	bl PlusCcMove__9cCcD_SttsFfff
lbl_80085B68:
/* 80085B68  28 1B 00 00 */	cmplwi r27, 0
/* 80085B6C  41 82 00 10 */	beq lbl_80085B7C
/* 80085B70  93 FB 00 08 */	stw r31, 8(r27)
/* 80085B74  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80085B78  D0 1B 00 0C */	stfs f0, 0xc(r27)
lbl_80085B7C:
/* 80085B7C  3B BD 00 20 */	addi r29, r29, 0x20
lbl_80085B80:
/* 80085B80  80 18 00 40 */	lwz r0, 0x40(r24)
/* 80085B84  54 03 28 34 */	slwi r3, r0, 5
/* 80085B88  38 03 00 44 */	addi r0, r3, 0x44
/* 80085B8C  7C 18 02 14 */	add r0, r24, r0
/* 80085B90  7C 1D 00 40 */	cmplw r29, r0
/* 80085B94  41 80 FE 64 */	blt lbl_800859F8
/* 80085B98  88 18 02 02 */	lbz r0, 0x202(r24)
/* 80085B9C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80085BA0  41 82 01 20 */	beq lbl_80085CC0
/* 80085BA4  38 78 02 64 */	addi r3, r24, 0x264
/* 80085BA8  38 81 00 38 */	addi r4, r1, 0x38
/* 80085BAC  48 1D D7 BD */	bl Chk__15cCcD_DivideInfoCFRC15cCcD_DivideInfo
/* 80085BB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80085BB4  41 82 01 0C */	beq lbl_80085CC0
/* 80085BB8  38 78 01 C8 */	addi r3, r24, 0x1c8
/* 80085BBC  38 98 02 24 */	addi r4, r24, 0x224
/* 80085BC0  38 A1 00 08 */	addi r5, r1, 8
/* 80085BC4  81 98 01 E4 */	lwz r12, 0x1e4(r24)
/* 80085BC8  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80085BCC  7D 89 03 A6 */	mtctr r12
/* 80085BD0  4E 80 04 21 */	bctrl 
/* 80085BD4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80085BD8  41 82 00 E8 */	beq lbl_80085CC0
/* 80085BDC  88 18 02 03 */	lbz r0, 0x203(r24)
/* 80085BE0  60 00 00 01 */	ori r0, r0, 1
/* 80085BE4  98 18 02 03 */	stb r0, 0x203(r24)
/* 80085BE8  88 B8 02 03 */	lbz r5, 0x203(r24)
/* 80085BEC  38 80 00 01 */	li r4, 1
/* 80085BF0  88 78 02 01 */	lbz r3, 0x201(r24)
/* 80085BF4  38 03 00 01 */	addi r0, r3, 1
/* 80085BF8  7C 80 00 30 */	slw r0, r4, r0
/* 80085BFC  7C A0 03 78 */	or r0, r5, r0
/* 80085C00  98 18 02 03 */	stb r0, 0x203(r24)
/* 80085C04  88 78 02 03 */	lbz r3, 0x203(r24)
/* 80085C08  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80085C0C  40 82 00 0C */	bne lbl_80085C18
/* 80085C10  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80085C14  41 82 00 AC */	beq lbl_80085CC0
lbl_80085C18:
/* 80085C18  C0 39 00 04 */	lfs f1, 4(r25)
/* 80085C1C  C0 18 01 F8 */	lfs f0, 0x1f8(r24)
/* 80085C20  EC 41 00 2A */	fadds f2, f1, f0
/* 80085C24  C0 19 00 00 */	lfs f0, 0(r25)
/* 80085C28  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80085C2C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80085C30  C0 19 00 08 */	lfs f0, 8(r25)
/* 80085C34  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80085C38  C0 38 02 08 */	lfs f1, 0x208(r24)
/* 80085C3C  C0 02 8D 70 */	lfs f0, lit_3900(r2)
/* 80085C40  EF E0 10 2A */	fadds f31, f0, f2
/* 80085C44  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80085C48  40 80 00 38 */	bge lbl_80085C80
/* 80085C4C  38 61 00 14 */	addi r3, r1, 0x14
/* 80085C50  38 98 02 44 */	addi r4, r24, 0x244
/* 80085C54  48 2C 17 49 */	bl PSVECSquareDistance
/* 80085C58  C0 18 02 10 */	lfs f0, 0x210(r24)
/* 80085C5C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80085C60  40 81 00 20 */	ble lbl_80085C80
/* 80085C64  D0 38 02 10 */	stfs f1, 0x210(r24)
/* 80085C68  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80085C6C  D0 18 02 04 */	stfs f0, 0x204(r24)
/* 80085C70  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80085C74  D0 18 02 08 */	stfs f0, 0x208(r24)
/* 80085C78  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80085C7C  D0 18 02 0C */	stfs f0, 0x20c(r24)
lbl_80085C80:
/* 80085C80  C0 18 02 18 */	lfs f0, 0x218(r24)
/* 80085C84  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80085C88  40 80 00 38 */	bge lbl_80085CC0
/* 80085C8C  38 61 00 14 */	addi r3, r1, 0x14
/* 80085C90  38 98 02 50 */	addi r4, r24, 0x250
/* 80085C94  48 2C 17 09 */	bl PSVECSquareDistance
/* 80085C98  C0 18 02 20 */	lfs f0, 0x220(r24)
/* 80085C9C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80085CA0  40 81 00 20 */	ble lbl_80085CC0
/* 80085CA4  D0 38 02 20 */	stfs f1, 0x220(r24)
/* 80085CA8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80085CAC  D0 18 02 14 */	stfs f0, 0x214(r24)
/* 80085CB0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80085CB4  D0 18 02 18 */	stfs f0, 0x218(r24)
/* 80085CB8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80085CBC  D0 18 02 1C */	stfs f0, 0x21c(r24)
lbl_80085CC0:
/* 80085CC0  3C 60 80 3A */	lis r3, __vt__15cCcD_DivideInfo@ha
/* 80085CC4  38 03 72 24 */	addi r0, r3, __vt__15cCcD_DivideInfo@l
/* 80085CC8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80085CCC  7F C3 F3 78 */	mr r3, r30
/* 80085CD0  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80085CD4  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80085CD8  39 61 00 70 */	addi r11, r1, 0x70
/* 80085CDC  48 2D C5 35 */	bl _restgpr_23
/* 80085CE0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80085CE4  7C 08 03 A6 */	mtlr r0
/* 80085CE8  38 21 00 80 */	addi r1, r1, 0x80
/* 80085CEC  4E 80 00 20 */	blr 
