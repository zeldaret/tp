lbl_806B6898:
/* 806B6898  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806B689C  7C 08 02 A6 */	mflr r0
/* 806B68A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 806B68A4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 806B68A8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 806B68AC  7C 7E 1B 78 */	mr r30, r3
/* 806B68B0  88 03 06 A0 */	lbz r0, 0x6a0(r3)
/* 806B68B4  28 00 00 0A */	cmplwi r0, 0xa
/* 806B68B8  41 82 04 50 */	beq lbl_806B6D08
/* 806B68BC  28 00 00 0B */	cmplwi r0, 0xb
/* 806B68C0  40 82 00 08 */	bne lbl_806B68C8
/* 806B68C4  48 00 04 44 */	b lbl_806B6D08
lbl_806B68C8:
/* 806B68C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B68CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806B68D0  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 806B68D4  38 7E 08 D8 */	addi r3, r30, 0x8d8
/* 806B68D8  4B 9C CF 58 */	b Move__10dCcD_GSttsFv
/* 806B68DC  38 00 00 C8 */	li r0, 0xc8
/* 806B68E0  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 806B68E4  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 806B68E8  38 7E 08 F8 */	addi r3, r30, 0x8f8
/* 806B68EC  4B 9C DB 74 */	b ChkTgHit__12dCcD_GObjInfFv
/* 806B68F0  28 03 00 00 */	cmplwi r3, 0
/* 806B68F4  41 82 02 04 */	beq lbl_806B6AF8
/* 806B68F8  38 7E 08 F8 */	addi r3, r30, 0x8f8
/* 806B68FC  4B 9C DB FC */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806B6900  90 7E 0C A0 */	stw r3, 0xca0(r30)
/* 806B6904  38 7E 08 F8 */	addi r3, r30, 0x8f8
/* 806B6908  4B 9C DB F0 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806B690C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806B6910  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 806B6914  41 82 01 E4 */	beq lbl_806B6AF8
/* 806B6918  38 7E 08 F8 */	addi r3, r30, 0x8f8
/* 806B691C  4B 9C DB DC */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806B6920  A0 1E 06 8C */	lhz r0, 0x68c(r30)
/* 806B6924  28 00 00 00 */	cmplwi r0, 0
/* 806B6928  40 82 01 94 */	bne lbl_806B6ABC
/* 806B692C  80 1E 06 68 */	lwz r0, 0x668(r30)
/* 806B6930  2C 00 00 02 */	cmpwi r0, 2
/* 806B6934  41 82 01 88 */	beq lbl_806B6ABC
/* 806B6938  38 7E 09 94 */	addi r3, r30, 0x994
/* 806B693C  4B 9C CD 4C */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 806B6940  88 9E 06 8E */	lbz r4, 0x68e(r30)
/* 806B6944  38 04 00 01 */	addi r0, r4, 1
/* 806B6948  98 1E 06 8E */	stb r0, 0x68e(r30)
/* 806B694C  7C 1F 18 40 */	cmplw r31, r3
/* 806B6950  40 82 00 14 */	bne lbl_806B6964
/* 806B6954  88 7E 06 8E */	lbz r3, 0x68e(r30)
/* 806B6958  38 03 00 01 */	addi r0, r3, 1
/* 806B695C  98 1E 06 8E */	stb r0, 0x68e(r30)
/* 806B6960  48 00 00 18 */	b lbl_806B6978
lbl_806B6964:
/* 806B6964  88 03 0D EB */	lbz r0, 0xdeb(r3)
/* 806B6968  2C 00 00 00 */	cmpwi r0, 0
/* 806B696C  41 82 00 0C */	beq lbl_806B6978
/* 806B6970  38 00 00 03 */	li r0, 3
/* 806B6974  98 1E 06 8E */	stb r0, 0x68e(r30)
lbl_806B6978:
/* 806B6978  88 1E 06 8E */	lbz r0, 0x68e(r30)
/* 806B697C  28 00 00 02 */	cmplwi r0, 2
/* 806B6980  40 81 00 DC */	ble lbl_806B6A5C
/* 806B6984  38 00 00 00 */	li r0, 0
/* 806B6988  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 806B698C  3C 60 80 6C */	lis r3, lit_3750@ha
/* 806B6990  C0 23 8F 9C */	lfs f1, lit_3750@l(r3)
/* 806B6994  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 806B6998  3C 60 80 6C */	lis r3, lit_3751@ha
/* 806B699C  C0 03 8F A0 */	lfs f0, lit_3751@l(r3)
/* 806B69A0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806B69A4  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 806B69A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B69AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806B69B0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 806B69B4  38 80 00 05 */	li r4, 5
/* 806B69B8  38 A0 00 1F */	li r5, 0x1f
/* 806B69BC  38 C1 00 24 */	addi r6, r1, 0x24
/* 806B69C0  4B 9B 90 64 */	b StartShock__12dVibration_cFii4cXyz
/* 806B69C4  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 806B69C8  54 00 00 3E */	slwi r0, r0, 0
/* 806B69CC  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 806B69D0  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 806B69D4  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 806B69D8  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 806B69DC  80 1E 08 F8 */	lwz r0, 0x8f8(r30)
/* 806B69E0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806B69E4  90 1E 08 F8 */	stw r0, 0x8f8(r30)
/* 806B69E8  80 1E 09 10 */	lwz r0, 0x910(r30)
/* 806B69EC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806B69F0  90 1E 09 10 */	stw r0, 0x910(r30)
/* 806B69F4  80 1E 0A 30 */	lwz r0, 0xa30(r30)
/* 806B69F8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806B69FC  90 1E 0A 30 */	stw r0, 0xa30(r30)
/* 806B6A00  80 1E 0A 48 */	lwz r0, 0xa48(r30)
/* 806B6A04  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806B6A08  90 1E 0A 48 */	stw r0, 0xa48(r30)
/* 806B6A0C  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806B6A10  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040006@ha */
/* 806B6A14  38 84 00 06 */	addi r4, r4, 0x0006 /* 0x00040006@l */
/* 806B6A18  38 A0 00 20 */	li r5, 0x20
/* 806B6A1C  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 806B6A20  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806B6A24  7D 89 03 A6 */	mtctr r12
/* 806B6A28  4E 80 04 21 */	bctrl 
/* 806B6A2C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070325@ha */
/* 806B6A30  38 03 03 25 */	addi r0, r3, 0x0325 /* 0x00070325@l */
/* 806B6A34  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B6A38  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806B6A3C  38 81 00 14 */	addi r4, r1, 0x14
/* 806B6A40  38 A0 00 00 */	li r5, 0
/* 806B6A44  38 C0 FF FF */	li r6, -1
/* 806B6A48  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 806B6A4C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806B6A50  7D 89 03 A6 */	mtctr r12
/* 806B6A54  4E 80 04 21 */	bctrl 
/* 806B6A58  48 00 00 50 */	b lbl_806B6AA8
lbl_806B6A5C:
/* 806B6A5C  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806B6A60  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040006@ha */
/* 806B6A64  38 84 00 06 */	addi r4, r4, 0x0006 /* 0x00040006@l */
/* 806B6A68  38 A0 00 1E */	li r5, 0x1e
/* 806B6A6C  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 806B6A70  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806B6A74  7D 89 03 A6 */	mtctr r12
/* 806B6A78  4E 80 04 21 */	bctrl 
/* 806B6A7C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070324@ha */
/* 806B6A80  38 03 03 24 */	addi r0, r3, 0x0324 /* 0x00070324@l */
/* 806B6A84  90 01 00 10 */	stw r0, 0x10(r1)
/* 806B6A88  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806B6A8C  38 81 00 10 */	addi r4, r1, 0x10
/* 806B6A90  38 A0 00 00 */	li r5, 0
/* 806B6A94  38 C0 FF FF */	li r6, -1
/* 806B6A98  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 806B6A9C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806B6AA0  7D 89 03 A6 */	mtctr r12
/* 806B6AA4  4E 80 04 21 */	bctrl 
lbl_806B6AA8:
/* 806B6AA8  7F C3 F3 78 */	mr r3, r30
/* 806B6AAC  38 80 00 02 */	li r4, 2
/* 806B6AB0  38 A0 00 00 */	li r5, 0
/* 806B6AB4  4B FF FD D9 */	bl setActionMode__8daE_FB_cFii
/* 806B6AB8  48 00 00 2C */	b lbl_806B6AE4
lbl_806B6ABC:
/* 806B6ABC  88 63 00 74 */	lbz r3, 0x74(r3)
/* 806B6AC0  38 80 00 00 */	li r4, 0
/* 806B6AC4  4B 9C DA EC */	b getHitSeID__12dCcD_GObjInfFUci
/* 806B6AC8  7C 64 1B 78 */	mr r4, r3
/* 806B6ACC  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806B6AD0  38 A0 00 2A */	li r5, 0x2a
/* 806B6AD4  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 806B6AD8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806B6ADC  7D 89 03 A6 */	mtctr r12
/* 806B6AE0  4E 80 04 21 */	bctrl 
lbl_806B6AE4:
/* 806B6AE4  38 7E 08 F8 */	addi r3, r30, 0x8f8
/* 806B6AE8  81 9E 09 34 */	lwz r12, 0x934(r30)
/* 806B6AEC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806B6AF0  7D 89 03 A6 */	mtctr r12
/* 806B6AF4  4E 80 04 21 */	bctrl 
lbl_806B6AF8:
/* 806B6AF8  38 7E 0A 30 */	addi r3, r30, 0xa30
/* 806B6AFC  4B 9C D9 64 */	b ChkTgHit__12dCcD_GObjInfFv
/* 806B6B00  28 03 00 00 */	cmplwi r3, 0
/* 806B6B04  41 82 02 04 */	beq lbl_806B6D08
/* 806B6B08  38 7E 0A 30 */	addi r3, r30, 0xa30
/* 806B6B0C  4B 9C D9 EC */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806B6B10  90 7E 0C A0 */	stw r3, 0xca0(r30)
/* 806B6B14  38 7E 0A 30 */	addi r3, r30, 0xa30
/* 806B6B18  4B 9C D9 E0 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806B6B1C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806B6B20  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 806B6B24  41 82 01 E4 */	beq lbl_806B6D08
/* 806B6B28  38 7E 0A 30 */	addi r3, r30, 0xa30
/* 806B6B2C  4B 9C D9 CC */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806B6B30  A0 1E 06 8C */	lhz r0, 0x68c(r30)
/* 806B6B34  28 00 00 00 */	cmplwi r0, 0
/* 806B6B38  40 82 01 94 */	bne lbl_806B6CCC
/* 806B6B3C  80 1E 06 68 */	lwz r0, 0x668(r30)
/* 806B6B40  2C 00 00 02 */	cmpwi r0, 2
/* 806B6B44  41 82 01 88 */	beq lbl_806B6CCC
/* 806B6B48  38 7E 0A CC */	addi r3, r30, 0xacc
/* 806B6B4C  4B 9C CB 3C */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 806B6B50  88 9E 06 8E */	lbz r4, 0x68e(r30)
/* 806B6B54  38 04 00 01 */	addi r0, r4, 1
/* 806B6B58  98 1E 06 8E */	stb r0, 0x68e(r30)
/* 806B6B5C  7C 1F 18 40 */	cmplw r31, r3
/* 806B6B60  40 82 00 14 */	bne lbl_806B6B74
/* 806B6B64  88 7E 06 8E */	lbz r3, 0x68e(r30)
/* 806B6B68  38 03 00 01 */	addi r0, r3, 1
/* 806B6B6C  98 1E 06 8E */	stb r0, 0x68e(r30)
/* 806B6B70  48 00 00 18 */	b lbl_806B6B88
lbl_806B6B74:
/* 806B6B74  88 03 0D EB */	lbz r0, 0xdeb(r3)
/* 806B6B78  2C 00 00 00 */	cmpwi r0, 0
/* 806B6B7C  41 82 00 0C */	beq lbl_806B6B88
/* 806B6B80  38 00 00 03 */	li r0, 3
/* 806B6B84  98 1E 06 8E */	stb r0, 0x68e(r30)
lbl_806B6B88:
/* 806B6B88  88 1E 06 8E */	lbz r0, 0x68e(r30)
/* 806B6B8C  28 00 00 02 */	cmplwi r0, 2
/* 806B6B90  40 81 00 DC */	ble lbl_806B6C6C
/* 806B6B94  38 00 00 00 */	li r0, 0
/* 806B6B98  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 806B6B9C  3C 60 80 6C */	lis r3, lit_3750@ha
/* 806B6BA0  C0 23 8F 9C */	lfs f1, lit_3750@l(r3)
/* 806B6BA4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806B6BA8  3C 60 80 6C */	lis r3, lit_3751@ha
/* 806B6BAC  C0 03 8F A0 */	lfs f0, lit_3751@l(r3)
/* 806B6BB0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806B6BB4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806B6BB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B6BBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806B6BC0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 806B6BC4  38 80 00 05 */	li r4, 5
/* 806B6BC8  38 A0 00 1F */	li r5, 0x1f
/* 806B6BCC  38 C1 00 18 */	addi r6, r1, 0x18
/* 806B6BD0  4B 9B 8E 54 */	b StartShock__12dVibration_cFii4cXyz
/* 806B6BD4  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 806B6BD8  54 00 00 3E */	slwi r0, r0, 0
/* 806B6BDC  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 806B6BE0  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 806B6BE4  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 806B6BE8  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 806B6BEC  80 1E 08 F8 */	lwz r0, 0x8f8(r30)
/* 806B6BF0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806B6BF4  90 1E 08 F8 */	stw r0, 0x8f8(r30)
/* 806B6BF8  80 1E 09 10 */	lwz r0, 0x910(r30)
/* 806B6BFC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806B6C00  90 1E 09 10 */	stw r0, 0x910(r30)
/* 806B6C04  80 1E 0A 30 */	lwz r0, 0xa30(r30)
/* 806B6C08  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806B6C0C  90 1E 0A 30 */	stw r0, 0xa30(r30)
/* 806B6C10  80 1E 0A 48 */	lwz r0, 0xa48(r30)
/* 806B6C14  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806B6C18  90 1E 0A 48 */	stw r0, 0xa48(r30)
/* 806B6C1C  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806B6C20  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040006@ha */
/* 806B6C24  38 84 00 06 */	addi r4, r4, 0x0006 /* 0x00040006@l */
/* 806B6C28  38 A0 00 20 */	li r5, 0x20
/* 806B6C2C  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 806B6C30  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806B6C34  7D 89 03 A6 */	mtctr r12
/* 806B6C38  4E 80 04 21 */	bctrl 
/* 806B6C3C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070325@ha */
/* 806B6C40  38 03 03 25 */	addi r0, r3, 0x0325 /* 0x00070325@l */
/* 806B6C44  90 01 00 0C */	stw r0, 0xc(r1)
/* 806B6C48  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806B6C4C  38 81 00 0C */	addi r4, r1, 0xc
/* 806B6C50  38 A0 00 00 */	li r5, 0
/* 806B6C54  38 C0 FF FF */	li r6, -1
/* 806B6C58  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 806B6C5C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806B6C60  7D 89 03 A6 */	mtctr r12
/* 806B6C64  4E 80 04 21 */	bctrl 
/* 806B6C68  48 00 00 50 */	b lbl_806B6CB8
lbl_806B6C6C:
/* 806B6C6C  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806B6C70  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040006@ha */
/* 806B6C74  38 84 00 06 */	addi r4, r4, 0x0006 /* 0x00040006@l */
/* 806B6C78  38 A0 00 1E */	li r5, 0x1e
/* 806B6C7C  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 806B6C80  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806B6C84  7D 89 03 A6 */	mtctr r12
/* 806B6C88  4E 80 04 21 */	bctrl 
/* 806B6C8C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070324@ha */
/* 806B6C90  38 03 03 24 */	addi r0, r3, 0x0324 /* 0x00070324@l */
/* 806B6C94  90 01 00 08 */	stw r0, 8(r1)
/* 806B6C98  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806B6C9C  38 81 00 08 */	addi r4, r1, 8
/* 806B6CA0  38 A0 00 00 */	li r5, 0
/* 806B6CA4  38 C0 FF FF */	li r6, -1
/* 806B6CA8  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 806B6CAC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806B6CB0  7D 89 03 A6 */	mtctr r12
/* 806B6CB4  4E 80 04 21 */	bctrl 
lbl_806B6CB8:
/* 806B6CB8  7F C3 F3 78 */	mr r3, r30
/* 806B6CBC  38 80 00 02 */	li r4, 2
/* 806B6CC0  38 A0 00 00 */	li r5, 0
/* 806B6CC4  4B FF FB C9 */	bl setActionMode__8daE_FB_cFii
/* 806B6CC8  48 00 00 2C */	b lbl_806B6CF4
lbl_806B6CCC:
/* 806B6CCC  88 63 00 74 */	lbz r3, 0x74(r3)
/* 806B6CD0  38 80 00 00 */	li r4, 0
/* 806B6CD4  4B 9C D8 DC */	b getHitSeID__12dCcD_GObjInfFUci
/* 806B6CD8  7C 64 1B 78 */	mr r4, r3
/* 806B6CDC  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806B6CE0  38 A0 00 2A */	li r5, 0x2a
/* 806B6CE4  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 806B6CE8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806B6CEC  7D 89 03 A6 */	mtctr r12
/* 806B6CF0  4E 80 04 21 */	bctrl 
lbl_806B6CF4:
/* 806B6CF4  38 7E 0A 30 */	addi r3, r30, 0xa30
/* 806B6CF8  81 9E 0A 6C */	lwz r12, 0xa6c(r30)
/* 806B6CFC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806B6D00  7D 89 03 A6 */	mtctr r12
/* 806B6D04  4E 80 04 21 */	bctrl 
lbl_806B6D08:
/* 806B6D08  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 806B6D0C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 806B6D10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806B6D14  7C 08 03 A6 */	mtlr r0
/* 806B6D18  38 21 00 40 */	addi r1, r1, 0x40
/* 806B6D1C  4E 80 00 20 */	blr 
