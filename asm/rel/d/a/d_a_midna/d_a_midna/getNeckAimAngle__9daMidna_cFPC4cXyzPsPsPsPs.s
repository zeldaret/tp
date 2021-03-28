lbl_804C287C:
/* 804C287C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804C2880  7C 08 02 A6 */	mflr r0
/* 804C2884  90 01 00 64 */	stw r0, 0x64(r1)
/* 804C2888  39 61 00 60 */	addi r11, r1, 0x60
/* 804C288C  4B E9 F9 38 */	b _savegpr_23
/* 804C2890  7C 78 1B 78 */	mr r24, r3
/* 804C2894  7C 9F 23 78 */	mr r31, r4
/* 804C2898  7C B9 2B 78 */	mr r25, r5
/* 804C289C  7C DA 33 78 */	mr r26, r6
/* 804C28A0  7C FB 3B 78 */	mr r27, r7
/* 804C28A4  7D 1C 43 78 */	mr r28, r8
/* 804C28A8  AA E3 08 5A */	lha r23, 0x85a(r3)
/* 804C28AC  38 61 00 14 */	addi r3, r1, 0x14
/* 804C28B0  38 98 05 38 */	addi r4, r24, 0x538
/* 804C28B4  38 B8 09 58 */	addi r5, r24, 0x958
/* 804C28B8  4B DA 42 7C */	b __mi__4cXyzCFRC3Vec
/* 804C28BC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804C28C0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804C28C4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804C28C8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804C28CC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804C28D0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804C28D4  38 61 00 2C */	addi r3, r1, 0x2c
/* 804C28D8  4B DA 48 78 */	b atan2sY_XZ__4cXyzCFv
/* 804C28DC  7C 7D 1B 78 */	mr r29, r3
/* 804C28E0  38 61 00 2C */	addi r3, r1, 0x2c
/* 804C28E4  4B DA 48 44 */	b atan2sX_Z__4cXyzCFv
/* 804C28E8  A8 18 08 80 */	lha r0, 0x880(r24)
/* 804C28EC  7C 00 E8 50 */	subf r0, r0, r29
/* 804C28F0  7C 1E 07 34 */	extsh r30, r0
/* 804C28F4  A8 98 08 82 */	lha r4, 0x882(r24)
/* 804C28F8  7C 17 18 50 */	subf r0, r23, r3
/* 804C28FC  7C 04 00 50 */	subf r0, r4, r0
/* 804C2900  7C 1D 07 34 */	extsh r29, r0
/* 804C2904  28 1F 00 00 */	cmplwi r31, 0
/* 804C2908  41 82 01 24 */	beq lbl_804C2A2C
/* 804C290C  38 61 00 08 */	addi r3, r1, 8
/* 804C2910  7F E4 FB 78 */	mr r4, r31
/* 804C2914  38 B8 09 58 */	addi r5, r24, 0x958
/* 804C2918  4B DA 42 1C */	b __mi__4cXyzCFRC3Vec
/* 804C291C  C0 01 00 08 */	lfs f0, 8(r1)
/* 804C2920  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804C2924  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804C2928  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804C292C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804C2930  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804C2934  38 61 00 20 */	addi r3, r1, 0x20
/* 804C2938  4B DA 48 18 */	b atan2sY_XZ__4cXyzCFv
/* 804C293C  7C 7F 1B 78 */	mr r31, r3
/* 804C2940  38 61 00 20 */	addi r3, r1, 0x20
/* 804C2944  4B DA 47 E4 */	b atan2sX_Z__4cXyzCFv
/* 804C2948  7C 17 18 50 */	subf r0, r23, r3
/* 804C294C  7C 00 07 34 */	extsh r0, r0
/* 804C2950  2C 00 70 00 */	cmpwi r0, 0x7000
/* 804C2954  40 81 00 10 */	ble lbl_804C2964
/* 804C2958  A8 78 08 82 */	lha r3, 0x882(r24)
/* 804C295C  2C 03 00 00 */	cmpwi r3, 0
/* 804C2960  41 80 00 18 */	blt lbl_804C2978
lbl_804C2964:
/* 804C2964  2C 00 90 00 */	cmpwi r0, -28672
/* 804C2968  40 80 00 18 */	bge lbl_804C2980
/* 804C296C  A8 78 08 82 */	lha r3, 0x882(r24)
/* 804C2970  2C 03 00 00 */	cmpwi r3, 0
/* 804C2974  40 81 00 0C */	ble lbl_804C2980
lbl_804C2978:
/* 804C2978  1C 00 FF FF */	mulli r0, r0, -1
/* 804C297C  7C 00 07 34 */	extsh r0, r0
lbl_804C2980:
/* 804C2980  7F E4 07 34 */	extsh r4, r31
/* 804C2984  2C 04 D8 F0 */	cmpwi r4, -10000
/* 804C2988  40 80 00 0C */	bge lbl_804C2994
/* 804C298C  38 60 D8 F0 */	li r3, -10000
/* 804C2990  48 00 00 14 */	b lbl_804C29A4
lbl_804C2994:
/* 804C2994  2C 04 1F 40 */	cmpwi r4, 0x1f40
/* 804C2998  38 60 1F 40 */	li r3, 0x1f40
/* 804C299C  41 81 00 08 */	bgt lbl_804C29A4
/* 804C29A0  7C 83 23 78 */	mr r3, r4
lbl_804C29A4:
/* 804C29A4  7C 65 07 34 */	extsh r5, r3
/* 804C29A8  7C 04 07 34 */	extsh r4, r0
/* 804C29AC  2C 04 B1 E0 */	cmpwi r4, -20000
/* 804C29B0  40 80 00 0C */	bge lbl_804C29BC
/* 804C29B4  38 60 B1 E0 */	li r3, -20000
/* 804C29B8  48 00 00 14 */	b lbl_804C29CC
lbl_804C29BC:
/* 804C29BC  2C 04 4E 20 */	cmpwi r4, 0x4e20
/* 804C29C0  38 60 4E 20 */	li r3, 0x4e20
/* 804C29C4  41 81 00 08 */	bgt lbl_804C29CC
/* 804C29C8  7C 83 23 78 */	mr r3, r4
lbl_804C29CC:
/* 804C29CC  7C 66 07 34 */	extsh r6, r3
/* 804C29D0  7C 7E 28 50 */	subf r3, r30, r5
/* 804C29D4  7C 63 07 34 */	extsh r3, r3
/* 804C29D8  7C 63 0E 70 */	srawi r3, r3, 1
/* 804C29DC  B0 7B 00 00 */	sth r3, 0(r27)
/* 804C29E0  7C 7D 30 50 */	subf r3, r29, r6
/* 804C29E4  7C 63 07 34 */	extsh r3, r3
/* 804C29E8  7C 63 0E 70 */	srawi r3, r3, 1
/* 804C29EC  B0 7C 00 00 */	sth r3, 0(r28)
/* 804C29F0  A8 7B 00 00 */	lha r3, 0(r27)
/* 804C29F4  B0 79 00 00 */	sth r3, 0(r25)
/* 804C29F8  A8 7C 00 00 */	lha r3, 0(r28)
/* 804C29FC  B0 7A 00 00 */	sth r3, 0(r26)
/* 804C2A00  A8 9B 00 00 */	lha r4, 0(r27)
/* 804C2A04  7C 65 F8 50 */	subf r3, r5, r31
/* 804C2A08  7C 63 07 34 */	extsh r3, r3
/* 804C2A0C  7C 64 1A 14 */	add r3, r4, r3
/* 804C2A10  B0 7B 00 00 */	sth r3, 0(r27)
/* 804C2A14  A8 7C 00 00 */	lha r3, 0(r28)
/* 804C2A18  7C 06 00 50 */	subf r0, r6, r0
/* 804C2A1C  7C 00 07 34 */	extsh r0, r0
/* 804C2A20  7C 03 02 14 */	add r0, r3, r0
/* 804C2A24  B0 1C 00 00 */	sth r0, 0(r28)
/* 804C2A28  48 00 00 24 */	b lbl_804C2A4C
lbl_804C2A2C:
/* 804C2A2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804C2A30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804C2A34  80 83 5D B4 */	lwz r4, 0x5db4(r3)
/* 804C2A38  A8 04 30 A0 */	lha r0, 0x30a0(r4)
/* 804C2A3C  B0 19 00 00 */	sth r0, 0(r25)
/* 804C2A40  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804C2A44  A8 03 30 D4 */	lha r0, 0x30d4(r3)
/* 804C2A48  B0 1A 00 00 */	sth r0, 0(r26)
lbl_804C2A4C:
/* 804C2A4C  7F A3 EB 78 */	mr r3, r29
/* 804C2A50  39 61 00 60 */	addi r11, r1, 0x60
/* 804C2A54  4B E9 F7 BC */	b _restgpr_23
/* 804C2A58  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804C2A5C  7C 08 03 A6 */	mtlr r0
/* 804C2A60  38 21 00 60 */	addi r1, r1, 0x60
/* 804C2A64  4E 80 00 20 */	blr 
