lbl_8071FE98:
/* 8071FE98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8071FE9C  7C 08 02 A6 */	mflr r0
/* 8071FEA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8071FEA4  39 61 00 30 */	addi r11, r1, 0x30
/* 8071FEA8  4B C4 23 34 */	b _savegpr_29
/* 8071FEAC  7C 7E 1B 78 */	mr r30, r3
/* 8071FEB0  3C 80 80 72 */	lis r4, lit_3789@ha
/* 8071FEB4  3B E4 2C 3C */	addi r31, r4, lit_3789@l
/* 8071FEB8  A8 03 05 62 */	lha r0, 0x562(r3)
/* 8071FEBC  2C 00 00 00 */	cmpwi r0, 0
/* 8071FEC0  40 81 02 C8 */	ble lbl_80720188
/* 8071FEC4  38 9E 05 BC */	addi r4, r30, 0x5bc
/* 8071FEC8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8071FECC  38 DE 04 EC */	addi r6, r30, 0x4ec
/* 8071FED0  48 00 29 45 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 8071FED4  A8 1E 06 A4 */	lha r0, 0x6a4(r30)
/* 8071FED8  2C 00 00 00 */	cmpwi r0, 0
/* 8071FEDC  40 82 02 AC */	bne lbl_80720188
/* 8071FEE0  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 8071FEE4  4B 96 39 4C */	b Move__10dCcD_GSttsFv
/* 8071FEE8  80 1E 09 60 */	lwz r0, 0x960(r30)
/* 8071FEEC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8071FEF0  41 82 00 C8 */	beq lbl_8071FFB8
/* 8071FEF4  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8071FEF8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8071FEFC  88 1E 04 99 */	lbz r0, 0x499(r30)
/* 8071FF00  2C 00 00 01 */	cmpwi r0, 1
/* 8071FF04  40 82 00 1C */	bne lbl_8071FF20
/* 8071FF08  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8071FF0C  3C 60 80 72 */	lis r3, l_HIO@ha
/* 8071FF10  38 63 2E C0 */	addi r3, r3, l_HIO@l
/* 8071FF14  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8071FF18  EC 01 00 32 */	fmuls f0, f1, f0
/* 8071FF1C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_8071FF20:
/* 8071FF20  38 00 00 01 */	li r0, 1
/* 8071FF24  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 8071FF28  38 00 00 05 */	li r0, 5
/* 8071FF2C  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 8071FF30  7F C3 F3 78 */	mr r3, r30
/* 8071FF34  38 80 00 0D */	li r4, 0xd
/* 8071FF38  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8071FF3C  38 A0 00 02 */	li r5, 2
/* 8071FF40  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8071FF44  4B FF FB 01 */	bl anm_init__FP10e_mm_classifUcf
/* 8071FF48  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702E5@ha */
/* 8071FF4C  38 03 02 E5 */	addi r0, r3, 0x02E5 /* 0x000702E5@l */
/* 8071FF50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8071FF54  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8071FF58  38 81 00 14 */	addi r4, r1, 0x14
/* 8071FF5C  38 A0 FF FF */	li r5, -1
/* 8071FF60  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8071FF64  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8071FF68  7D 89 03 A6 */	mtctr r12
/* 8071FF6C  4E 80 04 21 */	bctrl 
/* 8071FF70  88 1E 04 99 */	lbz r0, 0x499(r30)
/* 8071FF74  2C 00 00 01 */	cmpwi r0, 1
/* 8071FF78  40 82 00 18 */	bne lbl_8071FF90
/* 8071FF7C  3C 60 80 72 */	lis r3, l_HIO@ha
/* 8071FF80  38 63 2E C0 */	addi r3, r3, l_HIO@l
/* 8071FF84  A8 03 00 30 */	lha r0, 0x30(r3)
/* 8071FF88  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 8071FF8C  48 00 00 14 */	b lbl_8071FFA0
lbl_8071FF90:
/* 8071FF90  3C 60 80 72 */	lis r3, l_HIO@ha
/* 8071FF94  38 63 2E C0 */	addi r3, r3, l_HIO@l
/* 8071FF98  A8 03 00 18 */	lha r0, 0x18(r3)
/* 8071FF9C  B0 1E 06 9C */	sth r0, 0x69c(r30)
lbl_8071FFA0:
/* 8071FFA0  38 7E 09 04 */	addi r3, r30, 0x904
/* 8071FFA4  4B 96 43 B4 */	b GetAtHitObj__12dCcD_GObjInfFv
/* 8071FFA8  90 7E 0B 74 */	stw r3, 0xb74(r30)
/* 8071FFAC  38 00 00 0A */	li r0, 0xa
/* 8071FFB0  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 8071FFB4  48 00 01 D4 */	b lbl_80720188
lbl_8071FFB8:
/* 8071FFB8  38 7E 09 04 */	addi r3, r30, 0x904
/* 8071FFBC  4B 96 44 A4 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8071FFC0  28 03 00 00 */	cmplwi r3, 0
/* 8071FFC4  41 82 00 AC */	beq lbl_80720070
/* 8071FFC8  38 7E 09 04 */	addi r3, r30, 0x904
/* 8071FFCC  4B 96 45 2C */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8071FFD0  90 7E 0B 74 */	stw r3, 0xb74(r30)
/* 8071FFD4  AB BE 05 62 */	lha r29, 0x562(r30)
/* 8071FFD8  7F C3 F3 78 */	mr r3, r30
/* 8071FFDC  38 9E 0B 74 */	addi r4, r30, 0xb74
/* 8071FFE0  4B 96 7C 24 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 8071FFE4  38 60 00 0A */	li r3, 0xa
/* 8071FFE8  B0 7E 06 6E */	sth r3, 0x66e(r30)
/* 8071FFEC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8071FFF0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8071FFF4  38 00 00 03 */	li r0, 3
/* 8071FFF8  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 8071FFFC  B0 7E 06 A4 */	sth r3, 0x6a4(r30)
/* 80720000  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 80720004  7C 1D 00 00 */	cmpw r29, r0
/* 80720008  40 82 00 30 */	bne lbl_80720038
/* 8072000C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702E5@ha */
/* 80720010  38 03 02 E5 */	addi r0, r3, 0x02E5 /* 0x000702E5@l */
/* 80720014  90 01 00 10 */	stw r0, 0x10(r1)
/* 80720018  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8072001C  38 81 00 10 */	addi r4, r1, 0x10
/* 80720020  38 A0 FF FF */	li r5, -1
/* 80720024  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 80720028  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8072002C  7D 89 03 A6 */	mtctr r12
/* 80720030  4E 80 04 21 */	bctrl 
/* 80720034  48 00 00 2C */	b lbl_80720060
lbl_80720038:
/* 80720038  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702E4@ha */
/* 8072003C  38 03 02 E4 */	addi r0, r3, 0x02E4 /* 0x000702E4@l */
/* 80720040  90 01 00 0C */	stw r0, 0xc(r1)
/* 80720044  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80720048  38 81 00 0C */	addi r4, r1, 0xc
/* 8072004C  38 A0 FF FF */	li r5, -1
/* 80720050  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 80720054  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80720058  7D 89 03 A6 */	mtctr r12
/* 8072005C  4E 80 04 21 */	bctrl 
lbl_80720060:
/* 80720060  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80720064  D0 1E 06 A8 */	stfs f0, 0x6a8(r30)
/* 80720068  A8 1E 0B 82 */	lha r0, 0xb82(r30)
/* 8072006C  B0 1E 06 AC */	sth r0, 0x6ac(r30)
lbl_80720070:
/* 80720070  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 80720074  2C 00 00 01 */	cmpwi r0, 1
/* 80720078  41 81 00 80 */	bgt lbl_807200F8
/* 8072007C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80720080  54 00 00 3E */	slwi r0, r0, 0
/* 80720084  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80720088  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 8072008C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80720090  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80720094  80 1E 09 04 */	lwz r0, 0x904(r30)
/* 80720098  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8072009C  90 1E 09 04 */	stw r0, 0x904(r30)
/* 807200A0  80 1E 09 1C */	lwz r0, 0x91c(r30)
/* 807200A4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807200A8  90 1E 09 1C */	stw r0, 0x91c(r30)
/* 807200AC  38 00 00 0A */	li r0, 0xa
/* 807200B0  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 807200B4  38 60 00 00 */	li r3, 0
/* 807200B8  B0 7E 06 70 */	sth r3, 0x670(r30)
/* 807200BC  38 00 03 E8 */	li r0, 0x3e8
/* 807200C0  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 807200C4  B0 7E 05 62 */	sth r3, 0x562(r30)
/* 807200C8  38 00 00 03 */	li r0, 3
/* 807200CC  98 1E 09 BE */	stb r0, 0x9be(r30)
/* 807200D0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702E6@ha */
/* 807200D4  38 03 02 E6 */	addi r0, r3, 0x02E6 /* 0x000702E6@l */
/* 807200D8  90 01 00 08 */	stw r0, 8(r1)
/* 807200DC  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807200E0  38 81 00 08 */	addi r4, r1, 8
/* 807200E4  38 A0 FF FF */	li r5, -1
/* 807200E8  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807200EC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807200F0  7D 89 03 A6 */	mtctr r12
/* 807200F4  4E 80 04 21 */	bctrl 
lbl_807200F8:
/* 807200F8  38 7E 0A 3C */	addi r3, r30, 0xa3c
/* 807200FC  4B 96 43 64 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80720100  28 03 00 00 */	cmplwi r3, 0
/* 80720104  41 82 00 84 */	beq lbl_80720188
/* 80720108  38 7E 0A 3C */	addi r3, r30, 0xa3c
/* 8072010C  4B 96 44 3C */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 80720110  88 03 00 75 */	lbz r0, 0x75(r3)
/* 80720114  28 00 00 03 */	cmplwi r0, 3
/* 80720118  40 82 00 70 */	bne lbl_80720188
/* 8072011C  3B A3 00 84 */	addi r29, r3, 0x84
/* 80720120  7F A3 EB 78 */	mr r3, r29
/* 80720124  7F A4 EB 78 */	mr r4, r29
/* 80720128  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8072012C  4B C2 6F AC */	b PSVECScale
/* 80720130  38 7E 0B F4 */	addi r3, r30, 0xbf4
/* 80720134  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80720138  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8072013C  C0 7F 00 00 */	lfs f3, 0(r31)
/* 80720140  C0 9F 00 04 */	lfs f4, 4(r31)
/* 80720144  4B B4 F8 38 */	b cLib_addCalc__FPfffff
/* 80720148  38 7E 0B F8 */	addi r3, r30, 0xbf8
/* 8072014C  C0 3D 00 04 */	lfs f1, 4(r29)
/* 80720150  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80720154  C0 7F 00 00 */	lfs f3, 0(r31)
/* 80720158  C0 9F 00 04 */	lfs f4, 4(r31)
/* 8072015C  4B B4 F8 20 */	b cLib_addCalc__FPfffff
/* 80720160  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80720164  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80720168  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8072016C  C0 7F 00 00 */	lfs f3, 0(r31)
/* 80720170  C0 9F 00 04 */	lfs f4, 4(r31)
/* 80720174  4B B4 F8 08 */	b cLib_addCalc__FPfffff
/* 80720178  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8072017C  38 9E 0B F4 */	addi r4, r30, 0xbf4
/* 80720180  7C 65 1B 78 */	mr r5, r3
/* 80720184  4B C2 6F 0C */	b PSVECAdd
lbl_80720188:
/* 80720188  39 61 00 30 */	addi r11, r1, 0x30
/* 8072018C  4B C4 20 9C */	b _restgpr_29
/* 80720190  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80720194  7C 08 03 A6 */	mtlr r0
/* 80720198  38 21 00 30 */	addi r1, r1, 0x30
/* 8072019C  4E 80 00 20 */	blr 
