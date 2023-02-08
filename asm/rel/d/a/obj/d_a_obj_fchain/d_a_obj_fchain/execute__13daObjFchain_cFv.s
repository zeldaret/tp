lbl_80BE6868:
/* 80BE6868  94 21 FE 70 */	stwu r1, -0x190(r1)
/* 80BE686C  7C 08 02 A6 */	mflr r0
/* 80BE6870  90 01 01 94 */	stw r0, 0x194(r1)
/* 80BE6874  DB E1 01 80 */	stfd f31, 0x180(r1)
/* 80BE6878  F3 E1 01 88 */	psq_st f31, 392(r1), 0, 0 /* qr0 */
/* 80BE687C  DB C1 01 70 */	stfd f30, 0x170(r1)
/* 80BE6880  F3 C1 01 78 */	psq_st f30, 376(r1), 0, 0 /* qr0 */
/* 80BE6884  DB A1 01 60 */	stfd f29, 0x160(r1)
/* 80BE6888  F3 A1 01 68 */	psq_st f29, 360(r1), 0, 0 /* qr0 */
/* 80BE688C  DB 81 01 50 */	stfd f28, 0x150(r1)
/* 80BE6890  F3 81 01 58 */	psq_st f28, 344(r1), 0, 0 /* qr0 */
/* 80BE6894  39 61 01 50 */	addi r11, r1, 0x150
/* 80BE6898  4B 77 B9 2D */	bl _savegpr_23
/* 80BE689C  7C 78 1B 78 */	mr r24, r3
/* 80BE68A0  3C 60 80 BE */	lis r3, l_arcName@ha /* 0x80BE7438@ha */
/* 80BE68A4  3B E3 74 38 */	addi r31, r3, l_arcName@l /* 0x80BE7438@l */
/* 80BE68A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE68AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE68B0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80BE68B4  28 00 00 00 */	cmplwi r0, 0
/* 80BE68B8  41 82 00 64 */	beq lbl_80BE691C
/* 80BE68BC  3B 23 4F F8 */	addi r25, r3, 0x4ff8
/* 80BE68C0  7F 23 CB 78 */	mr r3, r25
/* 80BE68C4  4B 46 1B 25 */	bl getRunEventName__16dEvent_manager_cFv
/* 80BE68C8  28 03 00 00 */	cmplwi r3, 0
/* 80BE68CC  41 82 00 58 */	beq lbl_80BE6924
/* 80BE68D0  7F 23 CB 78 */	mr r3, r25
/* 80BE68D4  4B 46 1B 15 */	bl getRunEventName__16dEvent_manager_cFv
/* 80BE68D8  7C 64 1B 78 */	mr r4, r3
/* 80BE68DC  3C 60 80 BE */	lis r3, d_a_obj_fchain__stringBase0@ha /* 0x80BE74CC@ha */
/* 80BE68E0  38 63 74 CC */	addi r3, r3, d_a_obj_fchain__stringBase0@l /* 0x80BE74CC@l */
/* 80BE68E4  4B 78 20 B1 */	bl strcmp
/* 80BE68E8  2C 03 00 00 */	cmpwi r3, 0
/* 80BE68EC  40 82 00 38 */	bne lbl_80BE6924
/* 80BE68F0  A8 78 05 88 */	lha r3, 0x588(r24)
/* 80BE68F4  2C 03 00 00 */	cmpwi r3, 0
/* 80BE68F8  41 80 00 2C */	blt lbl_80BE6924
/* 80BE68FC  38 03 00 01 */	addi r0, r3, 1
/* 80BE6900  B0 18 05 88 */	sth r0, 0x588(r24)
/* 80BE6904  A8 18 05 88 */	lha r0, 0x588(r24)
/* 80BE6908  2C 00 01 36 */	cmpwi r0, 0x136
/* 80BE690C  40 81 00 18 */	ble lbl_80BE6924
/* 80BE6910  38 00 FF FF */	li r0, -1
/* 80BE6914  B0 18 05 88 */	sth r0, 0x588(r24)
/* 80BE6918  48 00 00 0C */	b lbl_80BE6924
lbl_80BE691C:
/* 80BE691C  38 00 00 00 */	li r0, 0
/* 80BE6920  B0 18 05 88 */	sth r0, 0x588(r24)
lbl_80BE6924:
/* 80BE6924  3A F8 04 D0 */	addi r23, r24, 0x4d0
/* 80BE6928  A0 78 05 86 */	lhz r3, 0x586(r24)
/* 80BE692C  28 03 00 00 */	cmplwi r3, 0
/* 80BE6930  41 82 00 0C */	beq lbl_80BE693C
/* 80BE6934  38 03 FF FF */	addi r0, r3, -1
/* 80BE6938  B0 18 05 86 */	sth r0, 0x586(r24)
lbl_80BE693C:
/* 80BE693C  3B 98 06 94 */	addi r28, r24, 0x694
/* 80BE6940  3B B8 07 9C */	addi r29, r24, 0x79c
/* 80BE6944  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE6948  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE694C  83 C3 5D B4 */	lwz r30, 0x5db4(r3)
/* 80BE6950  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80BE6954  54 19 01 8C */	rlwinm r25, r0, 0, 6, 6
/* 80BE6958  3B 60 00 00 */	li r27, 0
/* 80BE695C  3B 43 07 F0 */	addi r26, r3, 0x7f0
/* 80BE6960  C3 BF 00 78 */	lfs f29, 0x78(r31)
lbl_80BE6964:
/* 80BE6964  38 61 00 F4 */	addi r3, r1, 0xf4
/* 80BE6968  7F 84 E3 78 */	mr r4, r28
/* 80BE696C  7E E5 BB 78 */	mr r5, r23
/* 80BE6970  4B 68 01 C5 */	bl __mi__4cXyzCFRC3Vec
/* 80BE6974  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80BE6978  38 81 00 F4 */	addi r4, r1, 0xf4
/* 80BE697C  7F A5 EB 78 */	mr r5, r29
/* 80BE6980  4B 68 01 65 */	bl __pl__4cXyzCFRC3Vec
/* 80BE6984  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 80BE6988  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 80BE698C  C0 21 00 EC */	lfs f1, 0xec(r1)
/* 80BE6990  D0 21 01 10 */	stfs f1, 0x110(r1)
/* 80BE6994  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 80BE6998  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 80BE699C  EC 01 E8 2A */	fadds f0, f1, f29
/* 80BE69A0  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 80BE69A4  7F 43 D3 78 */	mr r3, r26
/* 80BE69A8  38 80 05 10 */	li r4, 0x510
/* 80BE69AC  4B 44 E0 11 */	bl isEventBit__11dSv_event_cCFUs
/* 80BE69B0  2C 03 00 00 */	cmpwi r3, 0
/* 80BE69B4  41 82 00 5C */	beq lbl_80BE6A10
/* 80BE69B8  28 19 00 00 */	cmplwi r25, 0
/* 80BE69BC  41 82 00 2C */	beq lbl_80BE69E8
/* 80BE69C0  7F 03 C3 78 */	mr r3, r24
/* 80BE69C4  7F 84 E3 78 */	mr r4, r28
/* 80BE69C8  38 BE 05 C8 */	addi r5, r30, 0x5c8
/* 80BE69CC  38 C1 01 0C */	addi r6, r1, 0x10c
/* 80BE69D0  4B FF FB 11 */	bl checkPlayerFoot__13daObjFchain_cFPC4cXyzPC4cXyzP4cXyz
/* 80BE69D4  7F 03 C3 78 */	mr r3, r24
/* 80BE69D8  7F 84 E3 78 */	mr r4, r28
/* 80BE69DC  38 BE 05 D4 */	addi r5, r30, 0x5d4
/* 80BE69E0  38 C1 01 0C */	addi r6, r1, 0x10c
/* 80BE69E4  4B FF FA FD */	bl checkPlayerFoot__13daObjFchain_cFPC4cXyzPC4cXyzP4cXyz
lbl_80BE69E8:
/* 80BE69E8  7F 03 C3 78 */	mr r3, r24
/* 80BE69EC  7F 84 E3 78 */	mr r4, r28
/* 80BE69F0  38 BE 05 E0 */	addi r5, r30, 0x5e0
/* 80BE69F4  38 C1 01 0C */	addi r6, r1, 0x10c
/* 80BE69F8  4B FF FA E9 */	bl checkPlayerFoot__13daObjFchain_cFPC4cXyzPC4cXyzP4cXyz
/* 80BE69FC  7F 03 C3 78 */	mr r3, r24
/* 80BE6A00  7F 84 E3 78 */	mr r4, r28
/* 80BE6A04  38 BE 05 EC */	addi r5, r30, 0x5ec
/* 80BE6A08  38 C1 01 0C */	addi r6, r1, 0x10c
/* 80BE6A0C  4B FF FA D5 */	bl checkPlayerFoot__13daObjFchain_cFPC4cXyzPC4cXyzP4cXyz
lbl_80BE6A10:
/* 80BE6A10  C0 01 01 0C */	lfs f0, 0x10c(r1)
/* 80BE6A14  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80BE6A18  C0 01 01 10 */	lfs f0, 0x110(r1)
/* 80BE6A1C  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80BE6A20  C0 01 01 14 */	lfs f0, 0x114(r1)
/* 80BE6A24  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 80BE6A28  38 61 00 DC */	addi r3, r1, 0xdc
/* 80BE6A2C  38 81 01 0C */	addi r4, r1, 0x10c
/* 80BE6A30  4B 68 05 19 */	bl normalizeZP__4cXyzFv
/* 80BE6A34  38 61 00 D0 */	addi r3, r1, 0xd0
/* 80BE6A38  38 81 01 0C */	addi r4, r1, 0x10c
/* 80BE6A3C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80BE6A40  4B 68 01 45 */	bl __ml__4cXyzCFf
/* 80BE6A44  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80BE6A48  7E E4 BB 78 */	mr r4, r23
/* 80BE6A4C  38 A1 00 D0 */	addi r5, r1, 0xd0
/* 80BE6A50  4B 68 00 95 */	bl __pl__4cXyzCFRC3Vec
/* 80BE6A54  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 80BE6A58  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80BE6A5C  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 80BE6A60  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80BE6A64  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 80BE6A68  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80BE6A6C  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80BE6A70  C0 38 04 D4 */	lfs f1, 0x4d4(r24)
/* 80BE6A74  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80BE6A78  40 80 00 4C */	bge lbl_80BE6AC4
/* 80BE6A7C  7F 03 C3 78 */	mr r3, r24
/* 80BE6A80  38 81 01 00 */	addi r4, r1, 0x100
/* 80BE6A84  EC 21 00 28 */	fsubs f1, f1, f0
/* 80BE6A88  4B FF FC 2D */	bl setGroundVec__13daObjFchain_cFP4cXyzf
/* 80BE6A8C  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80BE6A90  38 81 01 00 */	addi r4, r1, 0x100
/* 80BE6A94  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80BE6A98  4B 68 00 ED */	bl __ml__4cXyzCFf
/* 80BE6A9C  38 61 00 AC */	addi r3, r1, 0xac
/* 80BE6AA0  7E E4 BB 78 */	mr r4, r23
/* 80BE6AA4  38 A1 00 B8 */	addi r5, r1, 0xb8
/* 80BE6AA8  4B 68 00 3D */	bl __pl__4cXyzCFRC3Vec
/* 80BE6AAC  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80BE6AB0  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80BE6AB4  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80BE6AB8  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80BE6ABC  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80BE6AC0  D0 1C 00 08 */	stfs f0, 8(r28)
lbl_80BE6AC4:
/* 80BE6AC4  7F 97 E3 78 */	mr r23, r28
/* 80BE6AC8  3B 7B 00 01 */	addi r27, r27, 1
/* 80BE6ACC  2C 1B 00 16 */	cmpwi r27, 0x16
/* 80BE6AD0  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80BE6AD4  3B BD 00 0C */	addi r29, r29, 0xc
/* 80BE6AD8  41 80 FE 8C */	blt lbl_80BE6964
/* 80BE6ADC  28 19 00 00 */	cmplwi r25, 0
/* 80BE6AE0  41 82 03 20 */	beq lbl_80BE6E00
/* 80BE6AE4  7F 43 D3 78 */	mr r3, r26
/* 80BE6AE8  38 80 05 10 */	li r4, 0x510
/* 80BE6AEC  4B 44 DE D1 */	bl isEventBit__11dSv_event_cCFUs
/* 80BE6AF0  2C 03 00 00 */	cmpwi r3, 0
/* 80BE6AF4  40 82 03 0C */	bne lbl_80BE6E00
/* 80BE6AF8  7F C3 F3 78 */	mr r3, r30
/* 80BE6AFC  38 80 00 11 */	li r4, 0x11
/* 80BE6B00  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80BE6B04  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80BE6B08  7D 89 03 A6 */	mtctr r12
/* 80BE6B0C  4E 80 04 21 */	bctrl 
/* 80BE6B10  38 9F 00 6C */	addi r4, r31, 0x6c
/* 80BE6B14  38 B8 07 90 */	addi r5, r24, 0x790
/* 80BE6B18  4B 76 02 55 */	bl PSMTXMultVec
/* 80BE6B1C  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80BE6B20  38 98 07 90 */	addi r4, r24, 0x790
/* 80BE6B24  38 B8 04 D0 */	addi r5, r24, 0x4d0
/* 80BE6B28  4B 68 00 0D */	bl __mi__4cXyzCFRC3Vec
/* 80BE6B2C  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80BE6B30  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 80BE6B34  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80BE6B38  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 80BE6B3C  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80BE6B40  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 80BE6B44  38 61 01 0C */	addi r3, r1, 0x10c
/* 80BE6B48  4B 76 05 F1 */	bl PSVECSquareMag
/* 80BE6B4C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80BE6B50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE6B54  40 81 00 58 */	ble lbl_80BE6BAC
/* 80BE6B58  FC 00 08 34 */	frsqrte f0, f1
/* 80BE6B5C  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80BE6B60  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE6B64  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80BE6B68  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE6B6C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE6B70  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE6B74  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE6B78  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE6B7C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE6B80  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE6B84  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE6B88  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE6B8C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE6B90  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE6B94  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE6B98  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE6B9C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE6BA0  FF A1 00 32 */	fmul f29, f1, f0
/* 80BE6BA4  FF A0 E8 18 */	frsp f29, f29
/* 80BE6BA8  48 00 00 90 */	b lbl_80BE6C38
lbl_80BE6BAC:
/* 80BE6BAC  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80BE6BB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE6BB4  40 80 00 10 */	bge lbl_80BE6BC4
/* 80BE6BB8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BE6BBC  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BE6BC0  48 00 00 78 */	b lbl_80BE6C38
lbl_80BE6BC4:
/* 80BE6BC4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BE6BC8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80BE6BCC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BE6BD0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BE6BD4  7C 03 00 00 */	cmpw r3, r0
/* 80BE6BD8  41 82 00 14 */	beq lbl_80BE6BEC
/* 80BE6BDC  40 80 00 40 */	bge lbl_80BE6C1C
/* 80BE6BE0  2C 03 00 00 */	cmpwi r3, 0
/* 80BE6BE4  41 82 00 20 */	beq lbl_80BE6C04
/* 80BE6BE8  48 00 00 34 */	b lbl_80BE6C1C
lbl_80BE6BEC:
/* 80BE6BEC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BE6BF0  41 82 00 0C */	beq lbl_80BE6BFC
/* 80BE6BF4  38 00 00 01 */	li r0, 1
/* 80BE6BF8  48 00 00 28 */	b lbl_80BE6C20
lbl_80BE6BFC:
/* 80BE6BFC  38 00 00 02 */	li r0, 2
/* 80BE6C00  48 00 00 20 */	b lbl_80BE6C20
lbl_80BE6C04:
/* 80BE6C04  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BE6C08  41 82 00 0C */	beq lbl_80BE6C14
/* 80BE6C0C  38 00 00 05 */	li r0, 5
/* 80BE6C10  48 00 00 10 */	b lbl_80BE6C20
lbl_80BE6C14:
/* 80BE6C14  38 00 00 03 */	li r0, 3
/* 80BE6C18  48 00 00 08 */	b lbl_80BE6C20
lbl_80BE6C1C:
/* 80BE6C1C  38 00 00 04 */	li r0, 4
lbl_80BE6C20:
/* 80BE6C20  2C 00 00 01 */	cmpwi r0, 1
/* 80BE6C24  40 82 00 10 */	bne lbl_80BE6C34
/* 80BE6C28  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BE6C2C  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BE6C30  48 00 00 08 */	b lbl_80BE6C38
lbl_80BE6C34:
/* 80BE6C34  FF A0 08 90 */	fmr f29, f1
lbl_80BE6C38:
/* 80BE6C38  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80BE6C3C  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 80BE6C40  40 81 00 B0 */	ble lbl_80BE6CF0
/* 80BE6C44  C0 01 01 0C */	lfs f0, 0x10c(r1)
/* 80BE6C48  FC 20 00 50 */	fneg f1, f0
/* 80BE6C4C  C0 01 01 14 */	lfs f0, 0x114(r1)
/* 80BE6C50  FC 40 00 50 */	fneg f2, f0
/* 80BE6C54  4B 68 0A 21 */	bl cM_atan2s__Fff
/* 80BE6C58  7C 64 1B 78 */	mr r4, r3
/* 80BE6C5C  7F C3 F3 78 */	mr r3, r30
/* 80BE6C60  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80BE6C64  EC 3D 00 28 */	fsubs f1, f29, f0
/* 80BE6C68  38 A0 00 00 */	li r5, 0
/* 80BE6C6C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80BE6C70  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 80BE6C74  7D 89 03 A6 */	mtctr r12
/* 80BE6C78  4E 80 04 21 */	bctrl 
/* 80BE6C7C  80 1E 05 88 */	lwz r0, 0x588(r30)
/* 80BE6C80  64 00 10 00 */	oris r0, r0, 0x1000
/* 80BE6C84  90 1E 05 88 */	stw r0, 0x588(r30)
/* 80BE6C88  3B 38 06 94 */	addi r25, r24, 0x694
/* 80BE6C8C  3A F8 04 D0 */	addi r23, r24, 0x4d0
/* 80BE6C90  38 61 01 0C */	addi r3, r1, 0x10c
/* 80BE6C94  7C 64 1B 78 */	mr r4, r3
/* 80BE6C98  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80BE6C9C  EC 20 E8 24 */	fdivs f1, f0, f29
/* 80BE6CA0  4B 76 04 39 */	bl PSVECScale
/* 80BE6CA4  3B 40 00 00 */	li r26, 0
lbl_80BE6CA8:
/* 80BE6CA8  38 61 00 94 */	addi r3, r1, 0x94
/* 80BE6CAC  7E E4 BB 78 */	mr r4, r23
/* 80BE6CB0  38 A1 01 0C */	addi r5, r1, 0x10c
/* 80BE6CB4  4B 67 FE 31 */	bl __pl__4cXyzCFRC3Vec
/* 80BE6CB8  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80BE6CBC  D0 19 00 00 */	stfs f0, 0(r25)
/* 80BE6CC0  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80BE6CC4  D0 19 00 04 */	stfs f0, 4(r25)
/* 80BE6CC8  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80BE6CCC  D0 19 00 08 */	stfs f0, 8(r25)
/* 80BE6CD0  7F 37 CB 78 */	mr r23, r25
/* 80BE6CD4  3B 5A 00 01 */	addi r26, r26, 1
/* 80BE6CD8  2C 1A 00 16 */	cmpwi r26, 0x16
/* 80BE6CDC  3B 39 00 0C */	addi r25, r25, 0xc
/* 80BE6CE0  41 80 FF C8 */	blt lbl_80BE6CA8
/* 80BE6CE4  38 00 00 00 */	li r0, 0
/* 80BE6CE8  B0 18 05 84 */	sth r0, 0x584(r24)
/* 80BE6CEC  48 00 01 14 */	b lbl_80BE6E00
lbl_80BE6CF0:
/* 80BE6CF0  3B 38 07 84 */	addi r25, r24, 0x784
/* 80BE6CF4  3B 58 08 8C */	addi r26, r24, 0x88c
/* 80BE6CF8  3A F9 00 0C */	addi r23, r25, 0xc
/* 80BE6CFC  3B 60 00 14 */	li r27, 0x14
/* 80BE6D00  C3 BF 00 78 */	lfs f29, 0x78(r31)
lbl_80BE6D04:
/* 80BE6D04  38 61 00 88 */	addi r3, r1, 0x88
/* 80BE6D08  7F 24 CB 78 */	mr r4, r25
/* 80BE6D0C  7E E5 BB 78 */	mr r5, r23
/* 80BE6D10  4B 67 FE 25 */	bl __mi__4cXyzCFRC3Vec
/* 80BE6D14  38 61 00 7C */	addi r3, r1, 0x7c
/* 80BE6D18  38 81 00 88 */	addi r4, r1, 0x88
/* 80BE6D1C  7F 45 D3 78 */	mr r5, r26
/* 80BE6D20  4B 67 FD C5 */	bl __pl__4cXyzCFRC3Vec
/* 80BE6D24  C0 41 00 7C */	lfs f2, 0x7c(r1)
/* 80BE6D28  D0 41 01 0C */	stfs f2, 0x10c(r1)
/* 80BE6D2C  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80BE6D30  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 80BE6D34  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 80BE6D38  D0 21 01 14 */	stfs f1, 0x114(r1)
/* 80BE6D3C  EC 00 E8 2A */	fadds f0, f0, f29
/* 80BE6D40  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 80BE6D44  D0 41 01 00 */	stfs f2, 0x100(r1)
/* 80BE6D48  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80BE6D4C  D0 21 01 08 */	stfs f1, 0x108(r1)
/* 80BE6D50  38 61 00 70 */	addi r3, r1, 0x70
/* 80BE6D54  38 81 01 0C */	addi r4, r1, 0x10c
/* 80BE6D58  4B 68 01 F1 */	bl normalizeZP__4cXyzFv
/* 80BE6D5C  38 61 00 64 */	addi r3, r1, 0x64
/* 80BE6D60  38 81 01 0C */	addi r4, r1, 0x10c
/* 80BE6D64  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80BE6D68  4B 67 FE 1D */	bl __ml__4cXyzCFf
/* 80BE6D6C  38 61 00 58 */	addi r3, r1, 0x58
/* 80BE6D70  7E E4 BB 78 */	mr r4, r23
/* 80BE6D74  38 A1 00 64 */	addi r5, r1, 0x64
/* 80BE6D78  4B 67 FD 6D */	bl __pl__4cXyzCFRC3Vec
/* 80BE6D7C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80BE6D80  D0 19 00 00 */	stfs f0, 0(r25)
/* 80BE6D84  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80BE6D88  D0 19 00 04 */	stfs f0, 4(r25)
/* 80BE6D8C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80BE6D90  D0 19 00 08 */	stfs f0, 8(r25)
/* 80BE6D94  C0 19 00 04 */	lfs f0, 4(r25)
/* 80BE6D98  C0 38 04 D4 */	lfs f1, 0x4d4(r24)
/* 80BE6D9C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80BE6DA0  40 80 00 4C */	bge lbl_80BE6DEC
/* 80BE6DA4  7F 03 C3 78 */	mr r3, r24
/* 80BE6DA8  38 81 01 00 */	addi r4, r1, 0x100
/* 80BE6DAC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80BE6DB0  4B FF F9 05 */	bl setGroundVec__13daObjFchain_cFP4cXyzf
/* 80BE6DB4  38 61 00 4C */	addi r3, r1, 0x4c
/* 80BE6DB8  38 81 01 00 */	addi r4, r1, 0x100
/* 80BE6DBC  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80BE6DC0  4B 67 FD C5 */	bl __ml__4cXyzCFf
/* 80BE6DC4  38 61 00 40 */	addi r3, r1, 0x40
/* 80BE6DC8  7E E4 BB 78 */	mr r4, r23
/* 80BE6DCC  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80BE6DD0  4B 67 FD 15 */	bl __pl__4cXyzCFRC3Vec
/* 80BE6DD4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80BE6DD8  D0 19 00 00 */	stfs f0, 0(r25)
/* 80BE6DDC  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80BE6DE0  D0 19 00 04 */	stfs f0, 4(r25)
/* 80BE6DE4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80BE6DE8  D0 19 00 08 */	stfs f0, 8(r25)
lbl_80BE6DEC:
/* 80BE6DEC  7F 37 CB 78 */	mr r23, r25
/* 80BE6DF0  37 7B FF FF */	addic. r27, r27, -1
/* 80BE6DF4  3B 39 FF F4 */	addi r25, r25, -12
/* 80BE6DF8  3B 5A FF F4 */	addi r26, r26, -12
/* 80BE6DFC  40 80 FF 08 */	bge lbl_80BE6D04
lbl_80BE6E00:
/* 80BE6E00  3A F8 04 D0 */	addi r23, r24, 0x4d0
/* 80BE6E04  3B D8 06 94 */	addi r30, r24, 0x694
/* 80BE6E08  3B B8 07 9C */	addi r29, r24, 0x79c
/* 80BE6E0C  3B 78 08 A4 */	addi r27, r24, 0x8a4
/* 80BE6E10  3B 58 05 8C */	addi r26, r24, 0x58c
/* 80BE6E14  3B 20 00 00 */	li r25, 0
/* 80BE6E18  3B 80 00 00 */	li r28, 0
/* 80BE6E1C  C3 BF 00 40 */	lfs f29, 0x40(r31)
/* 80BE6E20  C3 DF 00 88 */	lfs f30, 0x88(r31)
/* 80BE6E24  C3 FF 00 14 */	lfs f31, 0x14(r31)
lbl_80BE6E28:
/* 80BE6E28  38 61 00 34 */	addi r3, r1, 0x34
/* 80BE6E2C  7F C4 F3 78 */	mr r4, r30
/* 80BE6E30  7F 45 D3 78 */	mr r5, r26
/* 80BE6E34  4B 67 FD 01 */	bl __mi__4cXyzCFRC3Vec
/* 80BE6E38  38 61 00 28 */	addi r3, r1, 0x28
/* 80BE6E3C  38 81 00 34 */	addi r4, r1, 0x34
/* 80BE6E40  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80BE6E44  4B 67 FD 41 */	bl __ml__4cXyzCFf
/* 80BE6E48  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80BE6E4C  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80BE6E50  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80BE6E54  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80BE6E58  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80BE6E5C  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80BE6E60  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80BE6E64  D0 1A 00 00 */	stfs f0, 0(r26)
/* 80BE6E68  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80BE6E6C  D0 1A 00 04 */	stfs f0, 4(r26)
/* 80BE6E70  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80BE6E74  D0 1A 00 08 */	stfs f0, 8(r26)
/* 80BE6E78  38 61 00 1C */	addi r3, r1, 0x1c
/* 80BE6E7C  7E E4 BB 78 */	mr r4, r23
/* 80BE6E80  7F C5 F3 78 */	mr r5, r30
/* 80BE6E84  4B 67 FC B1 */	bl __mi__4cXyzCFRC3Vec
/* 80BE6E88  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80BE6E8C  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 80BE6E90  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80BE6E94  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 80BE6E98  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80BE6E9C  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 80BE6EA0  38 61 01 0C */	addi r3, r1, 0x10c
/* 80BE6EA4  4B 68 02 AD */	bl atan2sY_XZ__4cXyzCFv
/* 80BE6EA8  B0 7B 00 00 */	sth r3, 0(r27)
/* 80BE6EAC  C0 01 01 0C */	lfs f0, 0x10c(r1)
/* 80BE6EB0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BE6EB4  D3 A1 00 14 */	stfs f29, 0x14(r1)
/* 80BE6EB8  C0 01 01 14 */	lfs f0, 0x114(r1)
/* 80BE6EBC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BE6EC0  38 61 00 10 */	addi r3, r1, 0x10
/* 80BE6EC4  4B 76 02 75 */	bl PSVECSquareMag
/* 80BE6EC8  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 80BE6ECC  40 81 00 58 */	ble lbl_80BE6F24
/* 80BE6ED0  FC 00 08 34 */	frsqrte f0, f1
/* 80BE6ED4  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80BE6ED8  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE6EDC  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80BE6EE0  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE6EE4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE6EE8  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE6EEC  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE6EF0  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE6EF4  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE6EF8  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE6EFC  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE6F00  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE6F04  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE6F08  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE6F0C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE6F10  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE6F14  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE6F18  FC 21 00 32 */	fmul f1, f1, f0
/* 80BE6F1C  FC 20 08 18 */	frsp f1, f1
/* 80BE6F20  48 00 00 88 */	b lbl_80BE6FA8
lbl_80BE6F24:
/* 80BE6F24  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80BE6F28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE6F2C  40 80 00 10 */	bge lbl_80BE6F3C
/* 80BE6F30  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BE6F34  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BE6F38  48 00 00 70 */	b lbl_80BE6FA8
lbl_80BE6F3C:
/* 80BE6F3C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BE6F40  80 81 00 08 */	lwz r4, 8(r1)
/* 80BE6F44  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BE6F48  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BE6F4C  7C 03 00 00 */	cmpw r3, r0
/* 80BE6F50  41 82 00 14 */	beq lbl_80BE6F64
/* 80BE6F54  40 80 00 40 */	bge lbl_80BE6F94
/* 80BE6F58  2C 03 00 00 */	cmpwi r3, 0
/* 80BE6F5C  41 82 00 20 */	beq lbl_80BE6F7C
/* 80BE6F60  48 00 00 34 */	b lbl_80BE6F94
lbl_80BE6F64:
/* 80BE6F64  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BE6F68  41 82 00 0C */	beq lbl_80BE6F74
/* 80BE6F6C  38 00 00 01 */	li r0, 1
/* 80BE6F70  48 00 00 28 */	b lbl_80BE6F98
lbl_80BE6F74:
/* 80BE6F74  38 00 00 02 */	li r0, 2
/* 80BE6F78  48 00 00 20 */	b lbl_80BE6F98
lbl_80BE6F7C:
/* 80BE6F7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BE6F80  41 82 00 0C */	beq lbl_80BE6F8C
/* 80BE6F84  38 00 00 05 */	li r0, 5
/* 80BE6F88  48 00 00 10 */	b lbl_80BE6F98
lbl_80BE6F8C:
/* 80BE6F8C  38 00 00 03 */	li r0, 3
/* 80BE6F90  48 00 00 08 */	b lbl_80BE6F98
lbl_80BE6F94:
/* 80BE6F94  38 00 00 04 */	li r0, 4
lbl_80BE6F98:
/* 80BE6F98  2C 00 00 01 */	cmpwi r0, 1
/* 80BE6F9C  40 82 00 0C */	bne lbl_80BE6FA8
/* 80BE6FA0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BE6FA4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BE6FA8:
/* 80BE6FA8  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80BE6FAC  41 80 00 10 */	blt lbl_80BE6FBC
/* 80BE6FB0  38 61 01 0C */	addi r3, r1, 0x10c
/* 80BE6FB4  4B 68 01 75 */	bl atan2sX_Z__4cXyzCFv
/* 80BE6FB8  B0 7B 00 02 */	sth r3, 2(r27)
lbl_80BE6FBC:
/* 80BE6FBC  7F A3 EB 78 */	mr r3, r29
/* 80BE6FC0  4B 76 01 79 */	bl PSVECSquareMag
/* 80BE6FC4  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80BE6FC8  40 81 00 FC */	ble lbl_80BE70C4
/* 80BE6FCC  A0 18 05 86 */	lhz r0, 0x586(r24)
/* 80BE6FD0  28 00 00 00 */	cmplwi r0, 0
/* 80BE6FD4  40 82 00 F0 */	bne lbl_80BE70C4
/* 80BE6FD8  4B 68 08 95 */	bl cM_rnd__Fv
/* 80BE6FDC  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80BE6FE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE6FE4  40 80 00 0C */	bge lbl_80BE6FF0
/* 80BE6FE8  C3 9F 00 24 */	lfs f28, 0x24(r31)
/* 80BE6FEC  48 00 00 08 */	b lbl_80BE6FF4
lbl_80BE6FF0:
/* 80BE6FF0  C3 9F 00 28 */	lfs f28, 0x28(r31)
lbl_80BE6FF4:
/* 80BE6FF4  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80BE6FF8  4B 68 09 5D */	bl cM_rndF__Ff
/* 80BE6FFC  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80BE7000  EC 00 08 2A */	fadds f0, f0, f1
/* 80BE7004  EC 5C 00 32 */	fmuls f2, f28, f0
/* 80BE7008  7F 23 07 34 */	extsh r3, r25
/* 80BE700C  38 03 40 00 */	addi r0, r3, 0x4000
/* 80BE7010  C8 3F 00 38 */	lfd f1, 0x38(r31)
/* 80BE7014  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BE7018  90 01 01 1C */	stw r0, 0x11c(r1)
/* 80BE701C  3C 00 43 30 */	lis r0, 0x4330
/* 80BE7020  90 01 01 18 */	stw r0, 0x118(r1)
/* 80BE7024  C8 01 01 18 */	lfd f0, 0x118(r1)
/* 80BE7028  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BE702C  EC 00 10 2A */	fadds f0, f0, f2
/* 80BE7030  FC 00 00 1E */	fctiwz f0, f0
/* 80BE7034  D8 01 01 20 */	stfd f0, 0x120(r1)
/* 80BE7038  80 01 01 24 */	lwz r0, 0x124(r1)
/* 80BE703C  B0 1B 00 04 */	sth r0, 4(r27)
/* 80BE7040  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80BE7044  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80BE7048  C0 18 04 D4 */	lfs f0, 0x4d4(r24)
/* 80BE704C  EC 01 00 2A */	fadds f0, f1, f0
/* 80BE7050  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BE7054  4C 40 13 82 */	cror 2, 0, 2
/* 80BE7058  40 82 00 6C */	bne lbl_80BE70C4
/* 80BE705C  A8 7B 00 04 */	lha r3, 4(r27)
/* 80BE7060  7C 60 07 35 */	extsh. r0, r3
/* 80BE7064  41 80 00 0C */	blt lbl_80BE7070
/* 80BE7068  2C 03 40 00 */	cmpwi r3, 0x4000
/* 80BE706C  41 80 00 14 */	blt lbl_80BE7080
lbl_80BE7070:
/* 80BE7070  2C 03 80 01 */	cmpwi r3, -32767
/* 80BE7074  40 81 00 30 */	ble lbl_80BE70A4
/* 80BE7078  2C 03 C0 00 */	cmpwi r3, -16384
/* 80BE707C  40 80 00 28 */	bge lbl_80BE70A4
lbl_80BE7080:
/* 80BE7080  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80BE7084  4B 68 09 09 */	bl cM_rndFX__Ff
/* 80BE7088  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80BE708C  EC 00 08 2A */	fadds f0, f0, f1
/* 80BE7090  FC 00 00 1E */	fctiwz f0, f0
/* 80BE7094  D8 01 01 20 */	stfd f0, 0x120(r1)
/* 80BE7098  80 01 01 24 */	lwz r0, 0x124(r1)
/* 80BE709C  B0 1B 00 04 */	sth r0, 4(r27)
/* 80BE70A0  48 00 00 24 */	b lbl_80BE70C4
lbl_80BE70A4:
/* 80BE70A4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80BE70A8  4B 68 08 E5 */	bl cM_rndFX__Ff
/* 80BE70AC  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80BE70B0  EC 00 08 2A */	fadds f0, f0, f1
/* 80BE70B4  FC 00 00 1E */	fctiwz f0, f0
/* 80BE70B8  D8 01 01 20 */	stfd f0, 0x120(r1)
/* 80BE70BC  80 01 01 24 */	lwz r0, 0x124(r1)
/* 80BE70C0  B0 1B 00 04 */	sth r0, 4(r27)
lbl_80BE70C4:
/* 80BE70C4  AB 3B 00 04 */	lha r25, 4(r27)
/* 80BE70C8  7F D7 F3 78 */	mr r23, r30
/* 80BE70CC  3B 9C 00 01 */	addi r28, r28, 1
/* 80BE70D0  2C 1C 00 16 */	cmpwi r28, 0x16
/* 80BE70D4  3B DE 00 0C */	addi r30, r30, 0xc
/* 80BE70D8  3B BD 00 0C */	addi r29, r29, 0xc
/* 80BE70DC  3B 7B 00 06 */	addi r27, r27, 6
/* 80BE70E0  3B 5A 00 0C */	addi r26, r26, 0xc
/* 80BE70E4  41 80 FD 44 */	blt lbl_80BE6E28
/* 80BE70E8  A8 18 05 84 */	lha r0, 0x584(r24)
/* 80BE70EC  2C 00 00 00 */	cmpwi r0, 0
/* 80BE70F0  40 82 00 48 */	bne lbl_80BE7138
/* 80BE70F4  38 00 00 01 */	li r0, 1
/* 80BE70F8  B0 18 05 84 */	sth r0, 0x584(r24)
/* 80BE70FC  38 98 07 9C */	addi r4, r24, 0x79c
/* 80BE7100  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80BE7104  38 63 0C F4 */	addi r3, r3, Zero__4cXyz@l /* 0x80430CF4@l */
/* 80BE7108  38 00 00 16 */	li r0, 0x16
/* 80BE710C  7C 09 03 A6 */	mtctr r0
lbl_80BE7110:
/* 80BE7110  C0 03 00 00 */	lfs f0, 0(r3)
/* 80BE7114  D0 04 00 00 */	stfs f0, 0(r4)
/* 80BE7118  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BE711C  D0 04 00 04 */	stfs f0, 4(r4)
/* 80BE7120  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BE7124  D0 04 00 08 */	stfs f0, 8(r4)
/* 80BE7128  38 84 00 0C */	addi r4, r4, 0xc
/* 80BE712C  42 00 FF E4 */	bdnz lbl_80BE7110
/* 80BE7130  38 00 00 05 */	li r0, 5
/* 80BE7134  B0 18 05 86 */	sth r0, 0x586(r24)
lbl_80BE7138:
/* 80BE7138  38 60 00 01 */	li r3, 1
/* 80BE713C  E3 E1 01 88 */	psq_l f31, 392(r1), 0, 0 /* qr0 */
/* 80BE7140  CB E1 01 80 */	lfd f31, 0x180(r1)
/* 80BE7144  E3 C1 01 78 */	psq_l f30, 376(r1), 0, 0 /* qr0 */
/* 80BE7148  CB C1 01 70 */	lfd f30, 0x170(r1)
/* 80BE714C  E3 A1 01 68 */	psq_l f29, 360(r1), 0, 0 /* qr0 */
/* 80BE7150  CB A1 01 60 */	lfd f29, 0x160(r1)
/* 80BE7154  E3 81 01 58 */	psq_l f28, 344(r1), 0, 0 /* qr0 */
/* 80BE7158  CB 81 01 50 */	lfd f28, 0x150(r1)
/* 80BE715C  39 61 01 50 */	addi r11, r1, 0x150
/* 80BE7160  4B 77 B0 B1 */	bl _restgpr_23
/* 80BE7164  80 01 01 94 */	lwz r0, 0x194(r1)
/* 80BE7168  7C 08 03 A6 */	mtlr r0
/* 80BE716C  38 21 01 90 */	addi r1, r1, 0x190
/* 80BE7170  4E 80 00 20 */	blr 
