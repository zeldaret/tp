lbl_8029F304:
/* 8029F304  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029F308  7C 08 02 A6 */	mflr r0
/* 8029F30C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029F310  39 61 00 20 */	addi r11, r1, 0x20
/* 8029F314  48 0C 2E C5 */	bl _savegpr_28
/* 8029F318  7C 7E 1B 78 */	mr r30, r3
/* 8029F31C  7C 9C 23 78 */	mr r28, r4
/* 8029F320  7C BD 2B 78 */	mr r29, r5
/* 8029F324  7C DF 33 78 */	mr r31, r6
/* 8029F328  7F A4 EB 78 */	mr r4, r29
/* 8029F32C  4B FF FD CD */	bl mixOut___5JAISeFRC14JASSoundParams
/* 8029F330  38 80 00 00 */	li r4, 0
/* 8029F334  88 7E 00 2F */	lbz r3, 0x2f(r30)
/* 8029F338  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 8029F33C  41 82 00 2C */	beq lbl_8029F368
/* 8029F340  54 60 EF FF */	rlwinm. r0, r3, 0x1d, 0x1f, 0x1f
/* 8029F344  41 82 00 20 */	beq lbl_8029F364
/* 8029F348  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 8029F34C  28 00 00 00 */	cmplwi r0, 0
/* 8029F350  40 82 00 18 */	bne lbl_8029F368
/* 8029F354  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8029F358  C0 02 BD 84 */	lfs f0, lit_736(r2)
/* 8029F35C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029F360  40 80 00 08 */	bge lbl_8029F368
lbl_8029F364:
/* 8029F364  38 80 00 01 */	li r4, 1
lbl_8029F368:
/* 8029F368  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8029F36C  41 82 00 10 */	beq lbl_8029F37C
/* 8029F370  7F C3 F3 78 */	mr r3, r30
/* 8029F374  4B FF FE A1 */	bl stopTrack___5JAISeFv
/* 8029F378  48 00 01 3C */	b lbl_8029F4B4
lbl_8029F37C:
/* 8029F37C  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 8029F380  41 82 00 DC */	beq lbl_8029F45C
/* 8029F384  88 1E 00 2E */	lbz r0, 0x2e(r30)
/* 8029F388  28 00 00 05 */	cmplwi r0, 5
/* 8029F38C  40 82 01 28 */	bne lbl_8029F4B4
/* 8029F390  88 1E 03 18 */	lbz r0, 0x318(r30)
/* 8029F394  28 00 00 00 */	cmplwi r0, 0
/* 8029F398  41 82 00 B4 */	beq lbl_8029F44C
/* 8029F39C  88 1E 02 DD */	lbz r0, 0x2dd(r30)
/* 8029F3A0  2C 00 00 02 */	cmpwi r0, 2
/* 8029F3A4  41 82 00 14 */	beq lbl_8029F3B8
/* 8029F3A8  40 80 01 0C */	bge lbl_8029F4B4
/* 8029F3AC  2C 00 00 01 */	cmpwi r0, 1
/* 8029F3B0  40 80 00 48 */	bge lbl_8029F3F8
/* 8029F3B4  48 00 01 00 */	b lbl_8029F4B4
lbl_8029F3B8:
/* 8029F3B8  88 1E 00 2D */	lbz r0, 0x2d(r30)
/* 8029F3BC  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8029F3C0  41 82 00 14 */	beq lbl_8029F3D4
/* 8029F3C4  7F C3 F3 78 */	mr r3, r30
/* 8029F3C8  7F A4 EB 78 */	mr r4, r29
/* 8029F3CC  4B FF FE 85 */	bl startTrack___5JAISeFRC14JASSoundParams
/* 8029F3D0  48 00 00 E4 */	b lbl_8029F4B4
lbl_8029F3D4:
/* 8029F3D4  38 60 00 00 */	li r3, 0
/* 8029F3D8  88 1E 00 2F */	lbz r0, 0x2f(r30)
/* 8029F3DC  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8029F3E0  98 1E 00 2F */	stb r0, 0x2f(r30)
/* 8029F3E4  38 60 00 01 */	li r3, 1
/* 8029F3E8  88 1E 00 2F */	lbz r0, 0x2f(r30)
/* 8029F3EC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8029F3F0  98 1E 00 2F */	stb r0, 0x2f(r30)
/* 8029F3F4  48 00 00 C0 */	b lbl_8029F4B4
lbl_8029F3F8:
/* 8029F3F8  38 7E 00 C8 */	addi r3, r30, 0xc8
/* 8029F3FC  38 80 00 00 */	li r4, 0
/* 8029F400  88 1E 00 2C */	lbz r0, 0x2c(r30)
/* 8029F404  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8029F408  40 82 00 10 */	bne lbl_8029F418
/* 8029F40C  88 1F 00 00 */	lbz r0, 0(r31)
/* 8029F410  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8029F414  41 82 00 08 */	beq lbl_8029F41C
lbl_8029F418:
/* 8029F418  38 80 00 01 */	li r4, 1
lbl_8029F41C:
/* 8029F41C  4B FF 36 21 */	bl pause__8JASTrackFb
/* 8029F420  38 7E 00 C8 */	addi r3, r30, 0xc8
/* 8029F424  38 80 00 00 */	li r4, 0
/* 8029F428  88 1E 00 2C */	lbz r0, 0x2c(r30)
/* 8029F42C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8029F430  40 82 00 10 */	bne lbl_8029F440
/* 8029F434  88 1F 00 00 */	lbz r0, 0(r31)
/* 8029F438  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8029F43C  41 82 00 08 */	beq lbl_8029F444
lbl_8029F440:
/* 8029F440  38 80 00 01 */	li r4, 1
lbl_8029F444:
/* 8029F444  4B FF 33 5D */	bl mute__8JASTrackFb
/* 8029F448  48 00 00 6C */	b lbl_8029F4B4
lbl_8029F44C:
/* 8029F44C  7F C3 F3 78 */	mr r3, r30
/* 8029F450  7F A4 EB 78 */	mr r4, r29
/* 8029F454  4B FF FD FD */	bl startTrack___5JAISeFRC14JASSoundParams
/* 8029F458  48 00 00 5C */	b lbl_8029F4B4
lbl_8029F45C:
/* 8029F45C  88 7E 00 2D */	lbz r3, 0x2d(r30)
/* 8029F460  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 8029F464  41 82 00 28 */	beq lbl_8029F48C
/* 8029F468  54 60 DF FF */	rlwinm. r0, r3, 0x1b, 0x1f, 0x1f
/* 8029F46C  41 82 00 14 */	beq lbl_8029F480
/* 8029F470  38 7E 00 C8 */	addi r3, r30, 0xc8
/* 8029F474  38 80 00 01 */	li r4, 1
/* 8029F478  4B FF 35 C5 */	bl pause__8JASTrackFb
/* 8029F47C  48 00 00 38 */	b lbl_8029F4B4
lbl_8029F480:
/* 8029F480  7F C3 F3 78 */	mr r3, r30
/* 8029F484  4B FF FD 91 */	bl stopTrack___5JAISeFv
/* 8029F488  48 00 00 2C */	b lbl_8029F4B4
lbl_8029F48C:
/* 8029F48C  7F C3 F3 78 */	mr r3, r30
/* 8029F490  4B FF FD 85 */	bl stopTrack___5JAISeFv
/* 8029F494  38 60 00 00 */	li r3, 0
/* 8029F498  88 1E 00 2F */	lbz r0, 0x2f(r30)
/* 8029F49C  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8029F4A0  98 1E 00 2F */	stb r0, 0x2f(r30)
/* 8029F4A4  38 60 00 01 */	li r3, 1
/* 8029F4A8  88 1E 00 2F */	lbz r0, 0x2f(r30)
/* 8029F4AC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8029F4B0  98 1E 00 2F */	stb r0, 0x2f(r30)
lbl_8029F4B4:
/* 8029F4B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8029F4B8  48 0C 2D 6D */	bl _restgpr_28
/* 8029F4BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029F4C0  7C 08 03 A6 */	mtlr r0
/* 8029F4C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8029F4C8  4E 80 00 20 */	blr 
