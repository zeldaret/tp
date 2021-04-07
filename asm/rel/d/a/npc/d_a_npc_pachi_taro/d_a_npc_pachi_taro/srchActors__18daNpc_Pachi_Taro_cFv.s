lbl_80A9D164:
/* 80A9D164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9D168  7C 08 02 A6 */	mflr r0
/* 80A9D16C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9D170  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9D174  7C 7F 1B 78 */	mr r31, r3
/* 80A9D178  88 03 0F 88 */	lbz r0, 0xf88(r3)
/* 80A9D17C  2C 00 00 00 */	cmpwi r0, 0
/* 80A9D180  41 82 00 08 */	beq lbl_80A9D188
/* 80A9D184  48 00 00 E4 */	b lbl_80A9D268
lbl_80A9D188:
/* 80A9D188  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80A9D18C  4B 6A 85 7D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9D190  28 03 00 00 */	cmplwi r3, 0
/* 80A9D194  40 82 00 1C */	bne lbl_80A9D1B0
/* 80A9D198  7F E3 FB 78 */	mr r3, r31
/* 80A9D19C  38 80 02 71 */	li r4, 0x271
/* 80A9D1A0  4B 6A EC 8D */	bl getNearestActorP__8daNpcT_cFs
/* 80A9D1A4  7C 64 1B 78 */	mr r4, r3
/* 80A9D1A8  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80A9D1AC  4B 6A 85 35 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80A9D1B0:
/* 80A9D1B0  38 7F 0F 94 */	addi r3, r31, 0xf94
/* 80A9D1B4  4B 6A 85 55 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9D1B8  28 03 00 00 */	cmplwi r3, 0
/* 80A9D1BC  40 82 00 1C */	bne lbl_80A9D1D8
/* 80A9D1C0  7F E3 FB 78 */	mr r3, r31
/* 80A9D1C4  38 80 02 6F */	li r4, 0x26f
/* 80A9D1C8  4B 6A EC 65 */	bl getNearestActorP__8daNpcT_cFs
/* 80A9D1CC  7C 64 1B 78 */	mr r4, r3
/* 80A9D1D0  38 7F 0F 94 */	addi r3, r31, 0xf94
/* 80A9D1D4  4B 6A 85 0D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80A9D1D8:
/* 80A9D1D8  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80A9D1DC  4B 6A 85 2D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9D1E0  28 03 00 00 */	cmplwi r3, 0
/* 80A9D1E4  40 82 00 18 */	bne lbl_80A9D1FC
/* 80A9D1E8  7F E3 FB 78 */	mr r3, r31
/* 80A9D1EC  48 00 00 91 */	bl srchDistTag1__18daNpc_Pachi_Taro_cFv
/* 80A9D1F0  7C 64 1B 78 */	mr r4, r3
/* 80A9D1F4  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80A9D1F8  4B 6A 84 E9 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80A9D1FC:
/* 80A9D1FC  38 7F 0F A4 */	addi r3, r31, 0xfa4
/* 80A9D200  4B 6A 85 09 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9D204  28 03 00 00 */	cmplwi r3, 0
/* 80A9D208  40 82 00 18 */	bne lbl_80A9D220
/* 80A9D20C  7F E3 FB 78 */	mr r3, r31
/* 80A9D210  48 00 01 01 */	bl srchDistTag2__18daNpc_Pachi_Taro_cFv
/* 80A9D214  7C 64 1B 78 */	mr r4, r3
/* 80A9D218  38 7F 0F A4 */	addi r3, r31, 0xfa4
/* 80A9D21C  4B 6A 84 C5 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80A9D220:
/* 80A9D220  38 7F 0F AC */	addi r3, r31, 0xfac
/* 80A9D224  4B 6A 84 E5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9D228  28 03 00 00 */	cmplwi r3, 0
/* 80A9D22C  40 82 00 18 */	bne lbl_80A9D244
/* 80A9D230  7F E3 FB 78 */	mr r3, r31
/* 80A9D234  48 00 01 71 */	bl srchEscapeTag1__18daNpc_Pachi_Taro_cFv
/* 80A9D238  7C 64 1B 78 */	mr r4, r3
/* 80A9D23C  38 7F 0F AC */	addi r3, r31, 0xfac
/* 80A9D240  4B 6A 84 A1 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80A9D244:
/* 80A9D244  38 7F 0F B4 */	addi r3, r31, 0xfb4
/* 80A9D248  4B 6A 84 C1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9D24C  28 03 00 00 */	cmplwi r3, 0
/* 80A9D250  40 82 00 18 */	bne lbl_80A9D268
/* 80A9D254  7F E3 FB 78 */	mr r3, r31
/* 80A9D258  48 00 01 E1 */	bl srchEscapeTag2__18daNpc_Pachi_Taro_cFv
/* 80A9D25C  7C 64 1B 78 */	mr r4, r3
/* 80A9D260  38 7F 0F B4 */	addi r3, r31, 0xfb4
/* 80A9D264  4B 6A 84 7D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80A9D268:
/* 80A9D268  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9D26C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9D270  7C 08 03 A6 */	mtlr r0
/* 80A9D274  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9D278  4E 80 00 20 */	blr 
