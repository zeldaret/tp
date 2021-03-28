lbl_805CD074:
/* 805CD074  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805CD078  7C 08 02 A6 */	mflr r0
/* 805CD07C  90 01 00 54 */	stw r0, 0x54(r1)
/* 805CD080  39 61 00 50 */	addi r11, r1, 0x50
/* 805CD084  4B D9 51 54 */	b _savegpr_28
/* 805CD088  7C 7F 1B 78 */	mr r31, r3
/* 805CD08C  A8 03 05 62 */	lha r0, 0x562(r3)
/* 805CD090  2C 00 00 01 */	cmpwi r0, 1
/* 805CD094  40 81 05 7C */	ble lbl_805CD610
/* 805CD098  88 1F 08 52 */	lbz r0, 0x852(r31)
/* 805CD09C  28 00 00 64 */	cmplwi r0, 0x64
/* 805CD0A0  40 82 00 08 */	bne lbl_805CD0A8
/* 805CD0A4  48 00 05 6C */	b lbl_805CD610
lbl_805CD0A8:
/* 805CD0A8  38 7F 08 4E */	addi r3, r31, 0x84e
/* 805CD0AC  48 00 F8 55 */	bl func_805DC900
/* 805CD0B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805CD0B4  40 82 05 5C */	bne lbl_805CD610
/* 805CD0B8  38 7F 2B B4 */	addi r3, r31, 0x2bb4
/* 805CD0BC  4B AB 73 A4 */	b ChkTgHit__12dCcD_GObjInfFv
/* 805CD0C0  28 03 00 00 */	cmplwi r3, 0
/* 805CD0C4  41 82 00 88 */	beq lbl_805CD14C
/* 805CD0C8  38 00 00 08 */	li r0, 8
/* 805CD0CC  98 1F 08 4E */	stb r0, 0x84e(r31)
/* 805CD0D0  38 7F 2B B4 */	addi r3, r31, 0x2bb4
/* 805CD0D4  4B AB 74 24 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805CD0D8  90 7F 2C F0 */	stw r3, 0x2cf0(r31)
/* 805CD0DC  7F E3 FB 78 */	mr r3, r31
/* 805CD0E0  38 80 00 00 */	li r4, 0
/* 805CD0E4  4B FF EC 81 */	bl HandHitSoundSet__8daB_DS_cFb
/* 805CD0E8  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 805CD0EC  2C 00 00 01 */	cmpwi r0, 1
/* 805CD0F0  41 82 00 44 */	beq lbl_805CD134
/* 805CD0F4  38 7F 2B B4 */	addi r3, r31, 0x2bb4
/* 805CD0F8  4B AB 74 00 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805CD0FC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 805CD100  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 805CD104  41 82 00 30 */	beq lbl_805CD134
/* 805CD108  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 805CD10C  2C 00 00 04 */	cmpwi r0, 4
/* 805CD110  40 82 00 10 */	bne lbl_805CD120
/* 805CD114  80 1F 06 88 */	lwz r0, 0x688(r31)
/* 805CD118  2C 00 00 00 */	cmpwi r0, 0
/* 805CD11C  41 82 00 18 */	beq lbl_805CD134
lbl_805CD120:
/* 805CD120  38 00 00 04 */	li r0, 4
/* 805CD124  90 1F 06 80 */	stw r0, 0x680(r31)
/* 805CD128  38 00 00 00 */	li r0, 0
/* 805CD12C  90 1F 06 88 */	stw r0, 0x688(r31)
/* 805CD130  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805CD134:
/* 805CD134  38 7F 2B B4 */	addi r3, r31, 0x2bb4
/* 805CD138  81 9F 2B F0 */	lwz r12, 0x2bf0(r31)
/* 805CD13C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805CD140  7D 89 03 A6 */	mtctr r12
/* 805CD144  4E 80 04 21 */	bctrl 
/* 805CD148  48 00 04 C8 */	b lbl_805CD610
lbl_805CD14C:
/* 805CD14C  38 7F 2A 78 */	addi r3, r31, 0x2a78
/* 805CD150  4B AB 73 10 */	b ChkTgHit__12dCcD_GObjInfFv
/* 805CD154  28 03 00 00 */	cmplwi r3, 0
/* 805CD158  41 82 00 88 */	beq lbl_805CD1E0
/* 805CD15C  38 00 00 08 */	li r0, 8
/* 805CD160  98 1F 08 4E */	stb r0, 0x84e(r31)
/* 805CD164  38 7F 2A 78 */	addi r3, r31, 0x2a78
/* 805CD168  4B AB 73 90 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805CD16C  90 7F 2C F0 */	stw r3, 0x2cf0(r31)
/* 805CD170  7F E3 FB 78 */	mr r3, r31
/* 805CD174  38 80 00 01 */	li r4, 1
/* 805CD178  4B FF EB ED */	bl HandHitSoundSet__8daB_DS_cFb
/* 805CD17C  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 805CD180  2C 00 00 01 */	cmpwi r0, 1
/* 805CD184  41 82 00 44 */	beq lbl_805CD1C8
/* 805CD188  38 7F 2A 78 */	addi r3, r31, 0x2a78
/* 805CD18C  4B AB 73 6C */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805CD190  80 03 00 10 */	lwz r0, 0x10(r3)
/* 805CD194  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 805CD198  41 82 00 30 */	beq lbl_805CD1C8
/* 805CD19C  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 805CD1A0  2C 00 00 04 */	cmpwi r0, 4
/* 805CD1A4  40 82 00 10 */	bne lbl_805CD1B4
/* 805CD1A8  80 1F 06 88 */	lwz r0, 0x688(r31)
/* 805CD1AC  2C 00 00 01 */	cmpwi r0, 1
/* 805CD1B0  41 82 00 18 */	beq lbl_805CD1C8
lbl_805CD1B4:
/* 805CD1B4  38 00 00 04 */	li r0, 4
/* 805CD1B8  90 1F 06 80 */	stw r0, 0x680(r31)
/* 805CD1BC  38 00 00 01 */	li r0, 1
/* 805CD1C0  90 1F 06 88 */	stw r0, 0x688(r31)
/* 805CD1C4  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805CD1C8:
/* 805CD1C8  38 7F 2A 78 */	addi r3, r31, 0x2a78
/* 805CD1CC  81 9F 2A B4 */	lwz r12, 0x2ab4(r31)
/* 805CD1D0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805CD1D4  7D 89 03 A6 */	mtctr r12
/* 805CD1D8  4E 80 04 21 */	bctrl 
/* 805CD1DC  48 00 04 34 */	b lbl_805CD610
lbl_805CD1E0:
/* 805CD1E0  3B 80 00 00 */	li r28, 0
/* 805CD1E4  3B C0 00 00 */	li r30, 0
lbl_805CD1E8:
/* 805CD1E8  3B BE 13 4C */	addi r29, r30, 0x134c
/* 805CD1EC  7F BF EA 14 */	add r29, r31, r29
/* 805CD1F0  7F A3 EB 78 */	mr r3, r29
/* 805CD1F4  4B AB 72 6C */	b ChkTgHit__12dCcD_GObjInfFv
/* 805CD1F8  28 03 00 00 */	cmplwi r3, 0
/* 805CD1FC  41 82 00 5C */	beq lbl_805CD258
/* 805CD200  38 00 00 08 */	li r0, 8
/* 805CD204  98 1F 08 4E */	stb r0, 0x84e(r31)
/* 805CD208  7F A3 EB 78 */	mr r3, r29
/* 805CD20C  4B AB 72 EC */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805CD210  90 7F 2C F0 */	stw r3, 0x2cf0(r31)
/* 805CD214  C0 1D 00 D4 */	lfs f0, 0xd4(r29)
/* 805CD218  D0 1F 06 C4 */	stfs f0, 0x6c4(r31)
/* 805CD21C  C0 1D 00 D8 */	lfs f0, 0xd8(r29)
/* 805CD220  D0 1F 06 C8 */	stfs f0, 0x6c8(r31)
/* 805CD224  C0 1D 00 DC */	lfs f0, 0xdc(r29)
/* 805CD228  D0 1F 06 CC */	stfs f0, 0x6cc(r31)
/* 805CD22C  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805CD230  80 9F 2C F0 */	lwz r4, 0x2cf0(r31)
/* 805CD234  38 A0 00 02 */	li r5, 2
/* 805CD238  38 C0 00 00 */	li r6, 0
/* 805CD23C  4B AB A2 D8 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 805CD240  7F A3 EB 78 */	mr r3, r29
/* 805CD244  81 9D 00 3C */	lwz r12, 0x3c(r29)
/* 805CD248  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805CD24C  7D 89 03 A6 */	mtctr r12
/* 805CD250  4E 80 04 21 */	bctrl 
/* 805CD254  48 00 03 BC */	b lbl_805CD610
lbl_805CD258:
/* 805CD258  3B 9C 00 01 */	addi r28, r28, 1
/* 805CD25C  2C 1C 00 12 */	cmpwi r28, 0x12
/* 805CD260  3B DE 01 38 */	addi r30, r30, 0x138
/* 805CD264  41 80 FF 84 */	blt lbl_805CD1E8
/* 805CD268  3B 80 00 00 */	li r28, 0
/* 805CD26C  3B C0 00 00 */	li r30, 0
lbl_805CD270:
/* 805CD270  3B BE 0B FC */	addi r29, r30, 0xbfc
/* 805CD274  7F BF EA 14 */	add r29, r31, r29
/* 805CD278  7F A3 EB 78 */	mr r3, r29
/* 805CD27C  4B AB 71 E4 */	b ChkTgHit__12dCcD_GObjInfFv
/* 805CD280  28 03 00 00 */	cmplwi r3, 0
/* 805CD284  41 82 00 90 */	beq lbl_805CD314
/* 805CD288  38 00 00 08 */	li r0, 8
/* 805CD28C  98 1F 08 4E */	stb r0, 0x84e(r31)
/* 805CD290  7F A3 EB 78 */	mr r3, r29
/* 805CD294  4B AB 72 64 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805CD298  90 7F 2C F0 */	stw r3, 0x2cf0(r31)
/* 805CD29C  C0 1F 07 54 */	lfs f0, 0x754(r31)
/* 805CD2A0  D0 1F 06 C4 */	stfs f0, 0x6c4(r31)
/* 805CD2A4  C0 1F 07 58 */	lfs f0, 0x758(r31)
/* 805CD2A8  D0 1F 06 C8 */	stfs f0, 0x6c8(r31)
/* 805CD2AC  C0 1F 07 5C */	lfs f0, 0x75c(r31)
/* 805CD2B0  D0 1F 06 CC */	stfs f0, 0x6cc(r31)
/* 805CD2B4  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805CD2B8  80 9F 2C F0 */	lwz r4, 0x2cf0(r31)
/* 805CD2BC  38 A0 00 02 */	li r5, 2
/* 805CD2C0  38 C0 00 00 */	li r6, 0
/* 805CD2C4  4B AB A2 50 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 805CD2C8  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 805CD2CC  2C 00 00 01 */	cmpwi r0, 1
/* 805CD2D0  41 82 00 2C */	beq lbl_805CD2FC
/* 805CD2D4  2C 00 00 04 */	cmpwi r0, 4
/* 805CD2D8  40 82 00 10 */	bne lbl_805CD2E8
/* 805CD2DC  80 1F 06 88 */	lwz r0, 0x688(r31)
/* 805CD2E0  2C 00 00 02 */	cmpwi r0, 2
/* 805CD2E4  41 82 00 18 */	beq lbl_805CD2FC
lbl_805CD2E8:
/* 805CD2E8  38 00 00 04 */	li r0, 4
/* 805CD2EC  90 1F 06 80 */	stw r0, 0x680(r31)
/* 805CD2F0  38 00 00 02 */	li r0, 2
/* 805CD2F4  90 1F 06 88 */	stw r0, 0x688(r31)
/* 805CD2F8  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805CD2FC:
/* 805CD2FC  7F A3 EB 78 */	mr r3, r29
/* 805CD300  81 9D 00 3C */	lwz r12, 0x3c(r29)
/* 805CD304  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805CD308  7D 89 03 A6 */	mtctr r12
/* 805CD30C  4E 80 04 21 */	bctrl 
/* 805CD310  48 00 03 00 */	b lbl_805CD610
lbl_805CD314:
/* 805CD314  3B 9C 00 01 */	addi r28, r28, 1
/* 805CD318  2C 1C 00 05 */	cmpwi r28, 5
/* 805CD31C  3B DE 01 38 */	addi r30, r30, 0x138
/* 805CD320  41 80 FF 50 */	blt lbl_805CD270
/* 805CD324  38 7F 0A C4 */	addi r3, r31, 0xac4
/* 805CD328  4B AB 71 38 */	b ChkTgHit__12dCcD_GObjInfFv
/* 805CD32C  28 03 00 00 */	cmplwi r3, 0
/* 805CD330  41 82 00 90 */	beq lbl_805CD3C0
/* 805CD334  38 00 00 08 */	li r0, 8
/* 805CD338  98 1F 08 4E */	stb r0, 0x84e(r31)
/* 805CD33C  38 7F 0A C4 */	addi r3, r31, 0xac4
/* 805CD340  4B AB 71 B8 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805CD344  90 7F 2C F0 */	stw r3, 0x2cf0(r31)
/* 805CD348  C0 1F 07 54 */	lfs f0, 0x754(r31)
/* 805CD34C  D0 1F 06 C4 */	stfs f0, 0x6c4(r31)
/* 805CD350  C0 1F 07 58 */	lfs f0, 0x758(r31)
/* 805CD354  D0 1F 06 C8 */	stfs f0, 0x6c8(r31)
/* 805CD358  C0 1F 07 5C */	lfs f0, 0x75c(r31)
/* 805CD35C  D0 1F 06 CC */	stfs f0, 0x6cc(r31)
/* 805CD360  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805CD364  80 9F 2C F0 */	lwz r4, 0x2cf0(r31)
/* 805CD368  38 A0 00 02 */	li r5, 2
/* 805CD36C  38 C0 00 00 */	li r6, 0
/* 805CD370  4B AB A1 A4 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 805CD374  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 805CD378  2C 00 00 01 */	cmpwi r0, 1
/* 805CD37C  41 82 00 2C */	beq lbl_805CD3A8
/* 805CD380  2C 00 00 04 */	cmpwi r0, 4
/* 805CD384  40 82 00 10 */	bne lbl_805CD394
/* 805CD388  80 1F 06 88 */	lwz r0, 0x688(r31)
/* 805CD38C  2C 00 00 02 */	cmpwi r0, 2
/* 805CD390  41 82 00 18 */	beq lbl_805CD3A8
lbl_805CD394:
/* 805CD394  38 00 00 04 */	li r0, 4
/* 805CD398  90 1F 06 80 */	stw r0, 0x680(r31)
/* 805CD39C  38 00 00 02 */	li r0, 2
/* 805CD3A0  90 1F 06 88 */	stw r0, 0x688(r31)
/* 805CD3A4  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805CD3A8:
/* 805CD3A8  38 7F 0A C4 */	addi r3, r31, 0xac4
/* 805CD3AC  81 9F 0B 00 */	lwz r12, 0xb00(r31)
/* 805CD3B0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805CD3B4  7D 89 03 A6 */	mtctr r12
/* 805CD3B8  4E 80 04 21 */	bctrl 
/* 805CD3BC  48 00 02 54 */	b lbl_805CD610
lbl_805CD3C0:
/* 805CD3C0  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 805CD3C4  2C 00 00 01 */	cmpwi r0, 1
/* 805CD3C8  41 82 02 48 */	beq lbl_805CD610
/* 805CD3CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805CD3D0  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 805CD3D4  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 805CD3D8  80 03 05 88 */	lwz r0, 0x588(r3)
/* 805CD3DC  64 00 02 00 */	oris r0, r0, 0x200
/* 805CD3E0  90 03 05 88 */	stw r0, 0x588(r3)
/* 805CD3E4  38 7F 0A A4 */	addi r3, r31, 0xaa4
/* 805CD3E8  4B AB 64 48 */	b Move__10dCcD_GSttsFv
/* 805CD3EC  38 7F 29 3C */	addi r3, r31, 0x293c
/* 805CD3F0  4B AB 70 70 */	b ChkTgHit__12dCcD_GObjInfFv
/* 805CD3F4  28 03 00 00 */	cmplwi r3, 0
/* 805CD3F8  41 82 02 18 */	beq lbl_805CD610
/* 805CD3FC  38 7F 29 3C */	addi r3, r31, 0x293c
/* 805CD400  4B AB 70 F8 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805CD404  90 7F 2C F0 */	stw r3, 0x2cf0(r31)
/* 805CD408  38 61 00 10 */	addi r3, r1, 0x10
/* 805CD40C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805CD410  3B BF 2A 10 */	addi r29, r31, 0x2a10
/* 805CD414  7F A5 EB 78 */	mr r5, r29
/* 805CD418  4B C9 97 1C */	b __mi__4cXyzCFRC3Vec
/* 805CD41C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805CD420  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805CD424  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805CD428  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805CD42C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805CD430  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805CD434  C0 1D 00 00 */	lfs f0, 0(r29)
/* 805CD438  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805CD43C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805CD440  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805CD444  C0 1D 00 08 */	lfs f0, 8(r29)
/* 805CD448  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805CD44C  38 00 00 00 */	li r0, 0
/* 805CD450  B0 01 00 08 */	sth r0, 8(r1)
/* 805CD454  38 61 00 28 */	addi r3, r1, 0x28
/* 805CD458  4B C9 9C D0 */	b atan2sX_Z__4cXyzCFv
/* 805CD45C  B0 61 00 0A */	sth r3, 0xa(r1)
/* 805CD460  38 00 00 00 */	li r0, 0
/* 805CD464  B0 01 00 0C */	sth r0, 0xc(r1)
/* 805CD468  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805CD46C  D0 1F 06 C4 */	stfs f0, 0x6c4(r31)
/* 805CD470  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805CD474  D0 1F 06 C8 */	stfs f0, 0x6c8(r31)
/* 805CD478  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805CD47C  D0 1F 06 CC */	stfs f0, 0x6cc(r31)
/* 805CD480  38 7F 29 3C */	addi r3, r31, 0x293c
/* 805CD484  4B AB 70 74 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805CD488  80 03 00 10 */	lwz r0, 0x10(r3)
/* 805CD48C  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 805CD490  41 82 01 44 */	beq lbl_805CD5D4
/* 805CD494  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 805CD498  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805CD49C  81 8C 01 F4 */	lwz r12, 0x1f4(r12)
/* 805CD4A0  7D 89 03 A6 */	mtctr r12
/* 805CD4A4  4E 80 04 21 */	bctrl 
/* 805CD4A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805CD4AC  41 82 01 28 */	beq lbl_805CD5D4
/* 805CD4B0  38 7F 29 3C */	addi r3, r31, 0x293c
/* 805CD4B4  4B AB 70 44 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805CD4B8  88 63 00 74 */	lbz r3, 0x74(r3)
/* 805CD4BC  38 80 00 00 */	li r4, 0
/* 805CD4C0  4B AB 70 F0 */	b getHitSeID__12dCcD_GObjInfFUci
/* 805CD4C4  7C 64 1B 78 */	mr r4, r3
/* 805CD4C8  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805CD4CC  80 BF 2D 08 */	lwz r5, 0x2d08(r31)
/* 805CD4D0  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 805CD4D4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 805CD4D8  7D 89 03 A6 */	mtctr r12
/* 805CD4DC  4E 80 04 21 */	bctrl 
/* 805CD4E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805CD4E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805CD4E8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805CD4EC  38 80 00 4F */	li r4, 0x4f
/* 805CD4F0  4B AA 28 A4 */	b StopQuake__12dVibration_cFi
/* 805CD4F4  38 00 00 03 */	li r0, 3
/* 805CD4F8  98 1F 29 F6 */	stb r0, 0x29f6(r31)
/* 805CD4FC  80 1F 2A 78 */	lwz r0, 0x2a78(r31)
/* 805CD500  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805CD504  90 1F 2A 78 */	stw r0, 0x2a78(r31)
/* 805CD508  80 1F 2B B4 */	lwz r0, 0x2bb4(r31)
/* 805CD50C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805CD510  90 1F 2B B4 */	stw r0, 0x2bb4(r31)
/* 805CD514  80 1F 2B 14 */	lwz r0, 0x2b14(r31)
/* 805CD518  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805CD51C  90 1F 2B 14 */	stw r0, 0x2b14(r31)
/* 805CD520  80 1F 2C 50 */	lwz r0, 0x2c50(r31)
/* 805CD524  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805CD528  90 1F 2C 50 */	stw r0, 0x2c50(r31)
/* 805CD52C  38 00 00 00 */	li r0, 0
/* 805CD530  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805CD534  88 9F 08 59 */	lbz r4, 0x859(r31)
/* 805CD538  28 04 00 FF */	cmplwi r4, 0xff
/* 805CD53C  41 82 00 18 */	beq lbl_805CD554
/* 805CD540  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805CD544  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805CD548  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805CD54C  7C 05 07 74 */	extsb r5, r0
/* 805CD550  4B A6 7C B0 */	b onSwitch__10dSv_info_cFii
lbl_805CD554:
/* 805CD554  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805CD558  80 9F 2C F0 */	lwz r4, 0x2cf0(r31)
/* 805CD55C  38 A0 00 1F */	li r5, 0x1f
/* 805CD560  38 C0 00 00 */	li r6, 0
/* 805CD564  4B AB 9F B0 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 805CD568  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805CD56C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805CD570  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805CD574  38 80 00 03 */	li r4, 3
/* 805CD578  7F E5 FB 78 */	mr r5, r31
/* 805CD57C  38 C1 00 1C */	addi r6, r1, 0x1c
/* 805CD580  38 E1 00 08 */	addi r7, r1, 8
/* 805CD584  39 00 00 00 */	li r8, 0
/* 805CD588  39 20 00 00 */	li r9, 0
/* 805CD58C  4B A7 EC 8C */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 805CD590  38 00 00 32 */	li r0, 0x32
/* 805CD594  98 1F 08 4E */	stb r0, 0x84e(r31)
/* 805CD598  7F E3 FB 78 */	mr r3, r31
/* 805CD59C  38 80 00 03 */	li r4, 3
/* 805CD5A0  38 A0 00 00 */	li r5, 0
/* 805CD5A4  4B FF E5 D1 */	bl setActionMode__8daB_DS_cFii
/* 805CD5A8  88 1F 08 4F */	lbz r0, 0x84f(r31)
/* 805CD5AC  28 00 00 02 */	cmplwi r0, 2
/* 805CD5B0  41 80 00 60 */	blt lbl_805CD610
/* 805CD5B4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805CD5B8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805CD5BC  80 63 00 00 */	lwz r3, 0(r3)
/* 805CD5C0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805CD5C4  38 80 00 1E */	li r4, 0x1e
/* 805CD5C8  38 A0 00 00 */	li r5, 0
/* 805CD5CC  4B CE 1E 3C */	b bgmStop__8Z2SeqMgrFUll
/* 805CD5D0  48 00 00 40 */	b lbl_805CD610
lbl_805CD5D4:
/* 805CD5D4  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805CD5D8  80 9F 2C F0 */	lwz r4, 0x2cf0(r31)
/* 805CD5DC  38 A0 00 02 */	li r5, 2
/* 805CD5E0  38 C0 00 00 */	li r6, 0
/* 805CD5E4  4B AB 9F 30 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 805CD5E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805CD5EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805CD5F0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805CD5F4  38 80 00 02 */	li r4, 2
/* 805CD5F8  7F E5 FB 78 */	mr r5, r31
/* 805CD5FC  38 C1 00 1C */	addi r6, r1, 0x1c
/* 805CD600  38 E1 00 08 */	addi r7, r1, 8
/* 805CD604  39 00 00 00 */	li r8, 0
/* 805CD608  39 20 00 00 */	li r9, 0
/* 805CD60C  4B A7 EC 0C */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
lbl_805CD610:
/* 805CD610  39 61 00 50 */	addi r11, r1, 0x50
/* 805CD614  4B D9 4C 10 */	b _restgpr_28
/* 805CD618  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805CD61C  7C 08 03 A6 */	mtlr r0
/* 805CD620  38 21 00 50 */	addi r1, r1, 0x50
/* 805CD624  4E 80 00 20 */	blr 
