lbl_806E3884:
/* 806E3884  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806E3888  7C 08 02 A6 */	mflr r0
/* 806E388C  90 01 00 24 */	stw r0, 0x24(r1)
/* 806E3890  39 61 00 20 */	addi r11, r1, 0x20
/* 806E3894  4B C7 E9 45 */	bl _savegpr_28
/* 806E3898  7C 7E 1B 78 */	mr r30, r3
/* 806E389C  38 7E 0A 60 */	addi r3, r30, 0xa60
/* 806E38A0  4B 9A 41 B9 */	bl at_power_check__FP11dCcU_AtInfo
/* 806E38A4  90 7E 0A 64 */	stw r3, 0xa64(r30)
/* 806E38A8  80 1E 0A 64 */	lwz r0, 0xa64(r30)
/* 806E38AC  28 00 00 00 */	cmplwi r0, 0
/* 806E38B0  41 82 01 20 */	beq lbl_806E39D0
/* 806E38B4  80 7E 0A 60 */	lwz r3, 0xa60(r30)
/* 806E38B8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806E38BC  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 806E38C0  41 82 00 0C */	beq lbl_806E38CC
/* 806E38C4  38 00 00 02 */	li r0, 2
/* 806E38C8  98 1E 0A 7F */	stb r0, 0xa7f(r30)
lbl_806E38CC:
/* 806E38CC  A0 1E 0A 7C */	lhz r0, 0xa7c(r30)
/* 806E38D0  7C 03 07 35 */	extsh. r3, r0
/* 806E38D4  40 81 00 10 */	ble lbl_806E38E4
/* 806E38D8  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 806E38DC  7C 03 00 50 */	subf r0, r3, r0
/* 806E38E0  B0 1E 05 62 */	sth r0, 0x562(r30)
lbl_806E38E4:
/* 806E38E4  A0 1E 0A 7C */	lhz r0, 0xa7c(r30)
/* 806E38E8  28 00 00 00 */	cmplwi r0, 0
/* 806E38EC  41 82 00 14 */	beq lbl_806E3900
/* 806E38F0  38 00 00 02 */	li r0, 2
/* 806E38F4  98 1E 0A 7F */	stb r0, 0xa7f(r30)
/* 806E38F8  3B E0 00 05 */	li r31, 5
/* 806E38FC  48 00 00 08 */	b lbl_806E3904
lbl_806E3900:
/* 806E3900  3B E0 00 02 */	li r31, 2
lbl_806E3904:
/* 806E3904  80 7E 0A 60 */	lwz r3, 0xa60(r30)
/* 806E3908  88 63 00 74 */	lbz r3, 0x74(r3)
/* 806E390C  3B 80 00 1E */	li r28, 0x1e
/* 806E3910  88 1E 0A 7F */	lbz r0, 0xa7f(r30)
/* 806E3914  7C 00 07 74 */	extsb r0, r0
/* 806E3918  2C 00 00 01 */	cmpwi r0, 1
/* 806E391C  40 82 00 0C */	bne lbl_806E3928
/* 806E3920  3B 80 00 1F */	li r28, 0x1f
/* 806E3924  48 00 00 10 */	b lbl_806E3934
lbl_806E3928:
/* 806E3928  2C 00 00 02 */	cmpwi r0, 2
/* 806E392C  40 82 00 08 */	bne lbl_806E3934
/* 806E3930  3B 80 00 20 */	li r28, 0x20
lbl_806E3934:
/* 806E3934  80 1E 0A 68 */	lwz r0, 0xa68(r30)
/* 806E3938  28 00 00 00 */	cmplwi r0, 0
/* 806E393C  41 82 00 5C */	beq lbl_806E3998
/* 806E3940  83 BE 0A 78 */	lwz r29, 0xa78(r30)
/* 806E3944  28 1D 00 00 */	cmplwi r29, 0
/* 806E3948  41 82 00 2C */	beq lbl_806E3974
/* 806E394C  38 80 00 00 */	li r4, 0
/* 806E3950  4B 9A 0C 61 */	bl getHitSeID__12dCcD_GObjInfFUci
/* 806E3954  7C 64 1B 78 */	mr r4, r3
/* 806E3958  80 7E 0A 68 */	lwz r3, 0xa68(r30)
/* 806E395C  7F A5 EB 78 */	mr r5, r29
/* 806E3960  81 83 00 00 */	lwz r12, 0(r3)
/* 806E3964  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806E3968  7D 89 03 A6 */	mtctr r12
/* 806E396C  4E 80 04 21 */	bctrl 
/* 806E3970  48 00 00 28 */	b lbl_806E3998
lbl_806E3974:
/* 806E3974  38 80 00 00 */	li r4, 0
/* 806E3978  4B 9A 0C 39 */	bl getHitSeID__12dCcD_GObjInfFUci
/* 806E397C  7C 64 1B 78 */	mr r4, r3
/* 806E3980  80 7E 0A 68 */	lwz r3, 0xa68(r30)
/* 806E3984  7F 85 E3 78 */	mr r5, r28
/* 806E3988  81 83 00 00 */	lwz r12, 0(r3)
/* 806E398C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806E3990  7D 89 03 A6 */	mtctr r12
/* 806E3994  4E 80 04 21 */	bctrl 
lbl_806E3998:
/* 806E3998  88 1E 0A 80 */	lbz r0, 0xa80(r30)
/* 806E399C  28 00 00 01 */	cmplwi r0, 1
/* 806E39A0  41 82 00 14 */	beq lbl_806E39B4
/* 806E39A4  80 7E 0A 60 */	lwz r3, 0xa60(r30)
/* 806E39A8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806E39AC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806E39B0  41 82 00 20 */	beq lbl_806E39D0
lbl_806E39B4:
/* 806E39B4  80 7E 0A 60 */	lwz r3, 0xa60(r30)
/* 806E39B8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806E39BC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806E39C0  41 82 00 08 */	beq lbl_806E39C8
/* 806E39C4  3B E0 00 04 */	li r31, 4
lbl_806E39C8:
/* 806E39C8  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha /* 0x80451125@ha */
/* 806E39CC  9B E3 11 25 */	stb r31, struct_80451124+0x1@l(r3)  /* 0x80451125@l */
lbl_806E39D0:
/* 806E39D0  39 61 00 20 */	addi r11, r1, 0x20
/* 806E39D4  4B C7 E8 51 */	bl _restgpr_28
/* 806E39D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806E39DC  7C 08 03 A6 */	mtlr r0
/* 806E39E0  38 21 00 20 */	addi r1, r1, 0x20
/* 806E39E4  4E 80 00 20 */	blr 
