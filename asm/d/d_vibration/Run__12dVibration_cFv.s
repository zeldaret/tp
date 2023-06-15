lbl_8006F268:
/* 8006F268  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8006F26C  7C 08 02 A6 */	mflr r0
/* 8006F270  90 01 00 64 */	stw r0, 0x64(r1)
/* 8006F274  39 61 00 60 */	addi r11, r1, 0x60
/* 8006F278  48 2F 2F 65 */	bl _savegpr_29
/* 8006F27C  7C 7F 1B 78 */	mr r31, r3
/* 8006F280  38 00 00 01 */	li r0, 1
/* 8006F284  90 03 00 8C */	stw r0, 0x8c(r3)
/* 8006F288  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8006F28C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8006F290  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8006F294  4B FC 53 B1 */	bl checkVibration__19dSv_player_config_cCFv
/* 8006F298  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8006F29C  28 00 00 01 */	cmplwi r0, 1
/* 8006F2A0  41 82 00 50 */	beq lbl_8006F2F0
/* 8006F2A4  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8006F2A8  2C 00 FF FF */	cmpwi r0, -1
/* 8006F2AC  41 82 00 18 */	beq lbl_8006F2C4
/* 8006F2B0  38 00 FF FF */	li r0, -1
/* 8006F2B4  90 1F 00 54 */	stw r0, 0x54(r31)
/* 8006F2B8  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 8006F2BC  60 00 00 01 */	ori r0, r0, 1
/* 8006F2C0  90 1F 00 50 */	stw r0, 0x50(r31)
lbl_8006F2C4:
/* 8006F2C4  80 1F 00 70 */	lwz r0, 0x70(r31)
/* 8006F2C8  2C 00 FF FF */	cmpwi r0, -1
/* 8006F2CC  41 82 00 18 */	beq lbl_8006F2E4
/* 8006F2D0  38 00 FF FF */	li r0, -1
/* 8006F2D4  90 1F 00 70 */	stw r0, 0x70(r31)
/* 8006F2D8  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 8006F2DC  60 00 00 01 */	ori r0, r0, 1
/* 8006F2E0  90 1F 00 6C */	stw r0, 0x6c(r31)
lbl_8006F2E4:
/* 8006F2E4  38 00 FF 9D */	li r0, -99
/* 8006F2E8  90 1F 00 80 */	stw r0, 0x80(r31)
/* 8006F2EC  90 1F 00 64 */	stw r0, 0x64(r31)
lbl_8006F2F0:
/* 8006F2F0  80 1F 00 00 */	lwz r0, 0(r31)
/* 8006F2F4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8006F2F8  41 82 00 20 */	beq lbl_8006F318
/* 8006F2FC  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 8006F300  2C 00 FF 9D */	cmpwi r0, -99
/* 8006F304  41 82 00 14 */	beq lbl_8006F318
/* 8006F308  38 00 00 00 */	li r0, 0
/* 8006F30C  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8006F310  38 00 FF FF */	li r0, -1
/* 8006F314  90 1F 00 04 */	stw r0, 4(r31)
lbl_8006F318:
/* 8006F318  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 8006F31C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8006F320  41 82 00 20 */	beq lbl_8006F340
/* 8006F324  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 8006F328  2C 00 FF 9D */	cmpwi r0, -99
/* 8006F32C  41 82 00 14 */	beq lbl_8006F340
/* 8006F330  38 00 00 00 */	li r0, 0
/* 8006F334  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8006F338  38 00 FF FF */	li r0, -1
/* 8006F33C  90 1F 00 2C */	stw r0, 0x2c(r31)
lbl_8006F340:
/* 8006F340  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8006F344  2C 03 00 00 */	cmpwi r3, 0
/* 8006F348  41 82 00 10 */	beq lbl_8006F358
/* 8006F34C  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 8006F350  2C 00 00 00 */	cmpwi r0, 0
/* 8006F354  40 82 02 E8 */	bne lbl_8006F63C
lbl_8006F358:
/* 8006F358  38 80 00 00 */	li r4, 0
/* 8006F35C  80 1F 00 04 */	lwz r0, 4(r31)
/* 8006F360  2C 00 FF FF */	cmpwi r0, -1
/* 8006F364  41 82 00 10 */	beq lbl_8006F374
/* 8006F368  80 1F 00 00 */	lwz r0, 0(r31)
/* 8006F36C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8006F370  41 82 00 20 */	beq lbl_8006F390
lbl_8006F374:
/* 8006F374  38 00 FF 9D */	li r0, -99
/* 8006F378  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8006F37C  38 00 00 00 */	li r0, 0
/* 8006F380  90 1F 00 08 */	stw r0, 8(r31)
/* 8006F384  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8006F388  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8006F38C  48 00 00 10 */	b lbl_8006F39C
lbl_8006F390:
/* 8006F390  2C 03 00 00 */	cmpwi r3, 0
/* 8006F394  41 80 00 08 */	blt lbl_8006F39C
/* 8006F398  60 84 00 01 */	ori r4, r4, 1
lbl_8006F39C:
/* 8006F39C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8006F3A0  2C 00 FF FF */	cmpwi r0, -1
/* 8006F3A4  41 82 00 10 */	beq lbl_8006F3B4
/* 8006F3A8  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 8006F3AC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8006F3B0  41 82 00 20 */	beq lbl_8006F3D0
lbl_8006F3B4:
/* 8006F3B4  38 00 FF 9D */	li r0, -99
/* 8006F3B8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8006F3BC  38 00 00 00 */	li r0, 0
/* 8006F3C0  90 1F 00 30 */	stw r0, 0x30(r31)
/* 8006F3C4  90 1F 00 34 */	stw r0, 0x34(r31)
/* 8006F3C8  90 1F 00 38 */	stw r0, 0x38(r31)
/* 8006F3CC  48 00 00 14 */	b lbl_8006F3E0
lbl_8006F3D0:
/* 8006F3D0  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 8006F3D4  2C 00 00 00 */	cmpwi r0, 0
/* 8006F3D8  41 80 00 08 */	blt lbl_8006F3E0
/* 8006F3DC  60 84 00 02 */	ori r4, r4, 2
lbl_8006F3E0:
/* 8006F3E0  2C 04 00 02 */	cmpwi r4, 2
/* 8006F3E4  41 82 00 A0 */	beq lbl_8006F484
/* 8006F3E8  40 80 00 10 */	bge lbl_8006F3F8
/* 8006F3EC  2C 04 00 01 */	cmpwi r4, 1
/* 8006F3F0  40 80 00 14 */	bge lbl_8006F404
/* 8006F3F4  48 00 02 20 */	b lbl_8006F614
lbl_8006F3F8:
/* 8006F3F8  2C 04 00 04 */	cmpwi r4, 4
/* 8006F3FC  40 80 02 18 */	bge lbl_8006F614
/* 8006F400  48 00 01 10 */	b lbl_8006F510
lbl_8006F404:
/* 8006F404  83 BF 00 0C */	lwz r29, 0xc(r31)
/* 8006F408  80 1F 00 08 */	lwz r0, 8(r31)
/* 8006F40C  90 01 00 08 */	stw r0, 8(r1)
/* 8006F410  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8006F414  7F A4 EB 78 */	mr r4, r29
/* 8006F418  4B FF FD C1 */	bl func_8006F1D8__Fll
/* 8006F41C  80 01 00 08 */	lwz r0, 8(r1)
/* 8006F420  7C 00 1B 78 */	or r0, r0, r3
/* 8006F424  90 01 00 08 */	stw r0, 8(r1)
/* 8006F428  83 DF 00 14 */	lwz r30, 0x14(r31)
/* 8006F42C  48 13 D1 51 */	bl dKy_darkworld_check__Fv
/* 8006F430  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8006F434  41 82 00 08 */	beq lbl_8006F43C
/* 8006F438  57 DE 07 32 */	rlwinm r30, r30, 0, 0x1c, 0x19
lbl_8006F43C:
/* 8006F43C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8006F440  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8006F444  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 8006F448  28 03 00 00 */	cmplwi r3, 0
/* 8006F44C  41 82 01 F0 */	beq lbl_8006F63C
/* 8006F450  88 03 02 2F */	lbz r0, 0x22f(r3)
/* 8006F454  2C 00 00 47 */	cmpwi r0, 0x47
/* 8006F458  40 82 01 E4 */	bne lbl_8006F63C
/* 8006F45C  38 61 00 3C */	addi r3, r1, 0x3c
/* 8006F460  38 9F 00 18 */	addi r4, r31, 0x18
/* 8006F464  48 1F 78 81 */	bl norm__4cXyzCFv
/* 8006F468  48 11 21 D9 */	bl dCam_getBody__Fv
/* 8006F46C  7F A4 EB 78 */	mr r4, r29
/* 8006F470  38 A1 00 08 */	addi r5, r1, 8
/* 8006F474  7F C6 F3 78 */	mr r6, r30
/* 8006F478  38 E1 00 3C */	addi r7, r1, 0x3c
/* 8006F47C  48 11 1B 85 */	bl StartShake__9dCamera_cFlPUcl4cXyz
/* 8006F480  48 00 01 BC */	b lbl_8006F63C
lbl_8006F484:
/* 8006F484  83 DF 00 34 */	lwz r30, 0x34(r31)
/* 8006F488  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8006F48C  7F C4 F3 78 */	mr r4, r30
/* 8006F490  80 BF 00 88 */	lwz r5, 0x88(r31)
/* 8006F494  4B FF FC F1 */	bl func_8006F184__FUlll
/* 8006F498  90 61 00 08 */	stw r3, 8(r1)
/* 8006F49C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8006F4A0  7F C4 F3 78 */	mr r4, r30
/* 8006F4A4  4B FF FD 35 */	bl func_8006F1D8__Fll
/* 8006F4A8  80 01 00 08 */	lwz r0, 8(r1)
/* 8006F4AC  7C 00 1B 78 */	or r0, r0, r3
/* 8006F4B0  90 01 00 08 */	stw r0, 8(r1)
/* 8006F4B4  83 BF 00 3C */	lwz r29, 0x3c(r31)
/* 8006F4B8  48 13 D0 C5 */	bl dKy_darkworld_check__Fv
/* 8006F4BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8006F4C0  41 82 00 08 */	beq lbl_8006F4C8
/* 8006F4C4  57 BD 07 32 */	rlwinm r29, r29, 0, 0x1c, 0x19
lbl_8006F4C8:
/* 8006F4C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8006F4CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8006F4D0  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 8006F4D4  28 03 00 00 */	cmplwi r3, 0
/* 8006F4D8  41 82 01 64 */	beq lbl_8006F63C
/* 8006F4DC  88 03 02 2F */	lbz r0, 0x22f(r3)
/* 8006F4E0  2C 00 00 47 */	cmpwi r0, 0x47
/* 8006F4E4  40 82 01 58 */	bne lbl_8006F63C
/* 8006F4E8  38 61 00 30 */	addi r3, r1, 0x30
/* 8006F4EC  38 9F 00 40 */	addi r4, r31, 0x40
/* 8006F4F0  48 1F 77 F5 */	bl norm__4cXyzCFv
/* 8006F4F4  48 11 21 4D */	bl dCam_getBody__Fv
/* 8006F4F8  7F C4 F3 78 */	mr r4, r30
/* 8006F4FC  38 A1 00 08 */	addi r5, r1, 8
/* 8006F500  7F A6 EB 78 */	mr r6, r29
/* 8006F504  38 E1 00 30 */	addi r7, r1, 0x30
/* 8006F508  48 11 1A F9 */	bl StartShake__9dCamera_cFlPUcl4cXyz
/* 8006F50C  48 00 01 30 */	b lbl_8006F63C
lbl_8006F510:
/* 8006F510  80 7F 00 08 */	lwz r3, 8(r31)
/* 8006F514  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 8006F518  7C 60 00 30 */	slw r0, r3, r0
/* 8006F51C  90 01 00 08 */	stw r0, 8(r1)
/* 8006F520  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8006F524  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8006F528  7F C3 00 50 */	subf r30, r3, r0
/* 8006F52C  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8006F530  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 8006F534  7F C5 F3 78 */	mr r5, r30
/* 8006F538  4B FF FC 6D */	bl func_8006F1A4__FUlll
/* 8006F53C  7F C4 F3 78 */	mr r4, r30
/* 8006F540  80 BF 00 88 */	lwz r5, 0x88(r31)
/* 8006F544  4B FF FC 41 */	bl func_8006F184__FUlll
/* 8006F548  80 01 00 08 */	lwz r0, 8(r1)
/* 8006F54C  7C 00 1B 78 */	or r0, r0, r3
/* 8006F550  90 01 00 08 */	stw r0, 8(r1)
/* 8006F554  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8006F558  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8006F55C  7C 00 18 00 */	cmpw r0, r3
/* 8006F560  40 81 00 08 */	ble lbl_8006F568
/* 8006F564  7C 03 03 78 */	mr r3, r0
lbl_8006F568:
/* 8006F568  7F C4 F3 78 */	mr r4, r30
/* 8006F56C  4B FF FC 6D */	bl func_8006F1D8__Fll
/* 8006F570  80 01 00 08 */	lwz r0, 8(r1)
/* 8006F574  7C 00 1B 78 */	or r0, r0, r3
/* 8006F578  90 01 00 08 */	stw r0, 8(r1)
/* 8006F57C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8006F580  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 8006F584  7C 7D 03 78 */	or r29, r3, r0
/* 8006F588  48 13 CF F5 */	bl dKy_darkworld_check__Fv
/* 8006F58C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8006F590  41 82 00 08 */	beq lbl_8006F598
/* 8006F594  57 BD 07 32 */	rlwinm r29, r29, 0, 0x1c, 0x19
lbl_8006F598:
/* 8006F598  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8006F59C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8006F5A0  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 8006F5A4  28 03 00 00 */	cmplwi r3, 0
/* 8006F5A8  41 82 00 5C */	beq lbl_8006F604
/* 8006F5AC  88 03 02 2F */	lbz r0, 0x22f(r3)
/* 8006F5B0  2C 00 00 47 */	cmpwi r0, 0x47
/* 8006F5B4  40 82 00 50 */	bne lbl_8006F604
/* 8006F5B8  38 61 00 24 */	addi r3, r1, 0x24
/* 8006F5BC  38 9F 00 18 */	addi r4, r31, 0x18
/* 8006F5C0  38 BF 00 40 */	addi r5, r31, 0x40
/* 8006F5C4  48 1F 75 21 */	bl __pl__4cXyzCFRC3Vec
/* 8006F5C8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8006F5CC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8006F5D0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8006F5D4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8006F5D8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8006F5DC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8006F5E0  38 61 00 0C */	addi r3, r1, 0xc
/* 8006F5E4  38 81 00 18 */	addi r4, r1, 0x18
/* 8006F5E8  48 1F 76 FD */	bl norm__4cXyzCFv
/* 8006F5EC  48 11 20 55 */	bl dCam_getBody__Fv
/* 8006F5F0  7F C4 F3 78 */	mr r4, r30
/* 8006F5F4  38 A1 00 08 */	addi r5, r1, 8
/* 8006F5F8  7F A6 EB 78 */	mr r6, r29
/* 8006F5FC  38 E1 00 0C */	addi r7, r1, 0xc
/* 8006F600  48 11 1A 01 */	bl StartShake__9dCamera_cFlPUcl4cXyz
lbl_8006F604:
/* 8006F604  38 00 00 00 */	li r0, 0
/* 8006F608  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8006F60C  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8006F610  48 00 00 2C */	b lbl_8006F63C
lbl_8006F614:
/* 8006F614  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8006F618  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8006F61C  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 8006F620  28 03 00 00 */	cmplwi r3, 0
/* 8006F624  41 82 00 18 */	beq lbl_8006F63C
/* 8006F628  88 03 02 2F */	lbz r0, 0x22f(r3)
/* 8006F62C  2C 00 00 47 */	cmpwi r0, 0x47
/* 8006F630  40 82 00 0C */	bne lbl_8006F63C
/* 8006F634  48 11 20 0D */	bl dCam_getBody__Fv
/* 8006F638  48 11 1B 21 */	bl StopShake__9dCamera_cFv
lbl_8006F63C:
/* 8006F63C  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 8006F640  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8006F644  41 82 00 20 */	beq lbl_8006F664
/* 8006F648  80 1F 00 64 */	lwz r0, 0x64(r31)
/* 8006F64C  2C 00 FF 9D */	cmpwi r0, -99
/* 8006F650  41 82 00 14 */	beq lbl_8006F664
/* 8006F654  38 00 00 00 */	li r0, 0
/* 8006F658  90 1F 00 64 */	stw r0, 0x64(r31)
/* 8006F65C  38 00 FF FF */	li r0, -1
/* 8006F660  90 1F 00 54 */	stw r0, 0x54(r31)
lbl_8006F664:
/* 8006F664  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 8006F668  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8006F66C  41 82 00 20 */	beq lbl_8006F68C
/* 8006F670  80 1F 00 80 */	lwz r0, 0x80(r31)
/* 8006F674  2C 00 FF 9D */	cmpwi r0, -99
/* 8006F678  41 82 00 14 */	beq lbl_8006F68C
/* 8006F67C  38 00 00 00 */	li r0, 0
/* 8006F680  90 1F 00 80 */	stw r0, 0x80(r31)
/* 8006F684  38 00 FF FF */	li r0, -1
/* 8006F688  90 1F 00 70 */	stw r0, 0x70(r31)
lbl_8006F68C:
/* 8006F68C  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8006F690  2C 03 00 00 */	cmpwi r3, 0
/* 8006F694  41 82 00 10 */	beq lbl_8006F6A4
/* 8006F698  80 1F 00 80 */	lwz r0, 0x80(r31)
/* 8006F69C  2C 00 00 00 */	cmpwi r0, 0
/* 8006F6A0  40 82 02 38 */	bne lbl_8006F8D8
lbl_8006F6A4:
/* 8006F6A4  38 80 00 00 */	li r4, 0
/* 8006F6A8  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8006F6AC  2C 00 FF FF */	cmpwi r0, -1
/* 8006F6B0  41 82 00 10 */	beq lbl_8006F6C0
/* 8006F6B4  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 8006F6B8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8006F6BC  41 82 00 20 */	beq lbl_8006F6DC
lbl_8006F6C0:
/* 8006F6C0  38 00 FF 9D */	li r0, -99
/* 8006F6C4  90 1F 00 64 */	stw r0, 0x64(r31)
/* 8006F6C8  38 00 00 00 */	li r0, 0
/* 8006F6CC  90 1F 00 58 */	stw r0, 0x58(r31)
/* 8006F6D0  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 8006F6D4  90 1F 00 60 */	stw r0, 0x60(r31)
/* 8006F6D8  48 00 00 10 */	b lbl_8006F6E8
lbl_8006F6DC:
/* 8006F6DC  2C 03 00 00 */	cmpwi r3, 0
/* 8006F6E0  41 80 00 08 */	blt lbl_8006F6E8
/* 8006F6E4  60 84 00 01 */	ori r4, r4, 1
lbl_8006F6E8:
/* 8006F6E8  80 1F 00 70 */	lwz r0, 0x70(r31)
/* 8006F6EC  2C 00 FF FF */	cmpwi r0, -1
/* 8006F6F0  41 82 00 10 */	beq lbl_8006F700
/* 8006F6F4  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 8006F6F8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8006F6FC  41 82 00 20 */	beq lbl_8006F71C
lbl_8006F700:
/* 8006F700  38 00 FF 9D */	li r0, -99
/* 8006F704  90 1F 00 80 */	stw r0, 0x80(r31)
/* 8006F708  38 00 00 00 */	li r0, 0
/* 8006F70C  90 1F 00 74 */	stw r0, 0x74(r31)
/* 8006F710  90 1F 00 78 */	stw r0, 0x78(r31)
/* 8006F714  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 8006F718  48 00 00 14 */	b lbl_8006F72C
lbl_8006F71C:
/* 8006F71C  80 1F 00 80 */	lwz r0, 0x80(r31)
/* 8006F720  2C 00 00 00 */	cmpwi r0, 0
/* 8006F724  41 80 00 08 */	blt lbl_8006F72C
/* 8006F728  60 84 00 02 */	ori r4, r4, 2
lbl_8006F72C:
/* 8006F72C  2C 04 00 02 */	cmpwi r4, 2
/* 8006F730  41 82 00 70 */	beq lbl_8006F7A0
/* 8006F734  40 80 00 10 */	bge lbl_8006F744
/* 8006F738  2C 04 00 01 */	cmpwi r4, 1
/* 8006F73C  40 80 00 14 */	bge lbl_8006F750
/* 8006F740  48 00 01 60 */	b lbl_8006F8A0
lbl_8006F744:
/* 8006F744  2C 04 00 04 */	cmpwi r4, 4
/* 8006F748  40 80 01 58 */	bge lbl_8006F8A0
/* 8006F74C  48 00 00 B8 */	b lbl_8006F804
lbl_8006F750:
/* 8006F750  83 DF 00 5C */	lwz r30, 0x5c(r31)
/* 8006F754  83 BF 00 58 */	lwz r29, 0x58(r31)
/* 8006F758  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8006F75C  7F C4 F3 78 */	mr r4, r30
/* 8006F760  4B FF FA 79 */	bl func_8006F1D8__Fll
/* 8006F764  7F BD 1B 78 */	or r29, r29, r3
/* 8006F768  93 DF 00 68 */	stw r30, 0x68(r31)
/* 8006F76C  38 6D 89 D0 */	la r3, data(r13) /* 80450F50-_SDA_BASE_ */
/* 8006F770  7F A4 EB 78 */	mr r4, r29
/* 8006F774  7F C5 F3 78 */	mr r5, r30
/* 8006F778  4B FF F9 F1 */	bl func_8006F168__FPUsUll
/* 8006F77C  7C 64 1B 78 */	mr r4, r3
/* 8006F780  3C 60 80 3E */	lis r3, m_gamePad__8mDoCPd_c@ha /* 0x803DD2D8@ha */
/* 8006F784  38 63 D2 D8 */	addi r3, r3, m_gamePad__8mDoCPd_c@l /* 0x803DD2D8@l */
/* 8006F788  80 63 00 00 */	lwz r3, 0(r3)
/* 8006F78C  38 63 00 68 */	addi r3, r3, 0x68
/* 8006F790  38 A0 00 00 */	li r5, 0
/* 8006F794  38 C0 00 3C */	li r6, 0x3c
/* 8006F798  48 27 21 35 */	bl startPatternedRumble__Q210JUTGamePad7CRumbleFPvQ310JUTGamePad7CRumble7ERumbleUl
/* 8006F79C  48 00 01 3C */	b lbl_8006F8D8
lbl_8006F7A0:
/* 8006F7A0  83 BF 00 78 */	lwz r29, 0x78(r31)
/* 8006F7A4  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8006F7A8  7F A4 EB 78 */	mr r4, r29
/* 8006F7AC  80 BF 00 88 */	lwz r5, 0x88(r31)
/* 8006F7B0  4B FF F9 D5 */	bl func_8006F184__FUlll
/* 8006F7B4  7C 7E 1B 78 */	mr r30, r3
/* 8006F7B8  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 8006F7BC  7F A4 EB 78 */	mr r4, r29
/* 8006F7C0  4B FF FA 19 */	bl func_8006F1D8__Fll
/* 8006F7C4  7F C4 1B 78 */	or r4, r30, r3
/* 8006F7C8  3C 60 80 00 */	lis r3, 0x8000 /* 0x7FFFFFFF@ha */
/* 8006F7CC  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x7FFFFFFF@l */
/* 8006F7D0  90 1F 00 84 */	stw r0, 0x84(r31)
/* 8006F7D4  38 6D 89 D0 */	la r3, data(r13) /* 80450F50-_SDA_BASE_ */
/* 8006F7D8  7F A5 EB 78 */	mr r5, r29
/* 8006F7DC  4B FF F9 8D */	bl func_8006F168__FPUsUll
/* 8006F7E0  7C 64 1B 78 */	mr r4, r3
/* 8006F7E4  3C 60 80 3E */	lis r3, m_gamePad__8mDoCPd_c@ha /* 0x803DD2D8@ha */
/* 8006F7E8  38 63 D2 D8 */	addi r3, r3, m_gamePad__8mDoCPd_c@l /* 0x803DD2D8@l */
/* 8006F7EC  80 63 00 00 */	lwz r3, 0(r3)
/* 8006F7F0  38 63 00 68 */	addi r3, r3, 0x68
/* 8006F7F4  38 A0 00 01 */	li r5, 1
/* 8006F7F8  38 C0 00 3C */	li r6, 0x3c
/* 8006F7FC  48 27 20 D1 */	bl startPatternedRumble__Q210JUTGamePad7CRumbleFPvQ310JUTGamePad7CRumble7ERumbleUl
/* 8006F800  48 00 00 D8 */	b lbl_8006F8D8
lbl_8006F804:
/* 8006F804  80 1F 00 58 */	lwz r0, 0x58(r31)
/* 8006F808  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8006F80C  7C 1E 18 30 */	slw r30, r0, r3
/* 8006F810  80 1F 00 5C */	lwz r0, 0x5c(r31)
/* 8006F814  7F A3 00 50 */	subf r29, r3, r0
/* 8006F818  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8006F81C  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 8006F820  7F A5 EB 78 */	mr r5, r29
/* 8006F824  4B FF F9 81 */	bl func_8006F1A4__FUlll
/* 8006F828  7F A4 EB 78 */	mr r4, r29
/* 8006F82C  80 BF 00 88 */	lwz r5, 0x88(r31)
/* 8006F830  4B FF F9 55 */	bl func_8006F184__FUlll
/* 8006F834  7F DE 1B 78 */	or r30, r30, r3
/* 8006F838  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 8006F83C  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 8006F840  7C 00 18 00 */	cmpw r0, r3
/* 8006F844  40 81 00 08 */	ble lbl_8006F84C
/* 8006F848  7C 03 03 78 */	mr r3, r0
lbl_8006F84C:
/* 8006F84C  7F A4 EB 78 */	mr r4, r29
/* 8006F850  4B FF F9 89 */	bl func_8006F1D8__Fll
/* 8006F854  7F DE 1B 78 */	or r30, r30, r3
/* 8006F858  93 BF 00 84 */	stw r29, 0x84(r31)
/* 8006F85C  93 BF 00 68 */	stw r29, 0x68(r31)
/* 8006F860  38 00 00 00 */	li r0, 0
/* 8006F864  90 1F 00 80 */	stw r0, 0x80(r31)
/* 8006F868  90 1F 00 64 */	stw r0, 0x64(r31)
/* 8006F86C  38 6D 89 D0 */	la r3, data(r13) /* 80450F50-_SDA_BASE_ */
/* 8006F870  7F C4 F3 78 */	mr r4, r30
/* 8006F874  7F A5 EB 78 */	mr r5, r29
/* 8006F878  4B FF F8 F1 */	bl func_8006F168__FPUsUll
/* 8006F87C  7C 64 1B 78 */	mr r4, r3
/* 8006F880  3C 60 80 3E */	lis r3, m_gamePad__8mDoCPd_c@ha /* 0x803DD2D8@ha */
/* 8006F884  38 63 D2 D8 */	addi r3, r3, m_gamePad__8mDoCPd_c@l /* 0x803DD2D8@l */
/* 8006F888  80 63 00 00 */	lwz r3, 0(r3)
/* 8006F88C  38 63 00 68 */	addi r3, r3, 0x68
/* 8006F890  38 A0 00 00 */	li r5, 0
/* 8006F894  38 C0 00 3C */	li r6, 0x3c
/* 8006F898  48 27 20 35 */	bl startPatternedRumble__Q210JUTGamePad7CRumbleFPvQ310JUTGamePad7CRumble7ERumbleUl
/* 8006F89C  48 00 00 3C */	b lbl_8006F8D8
lbl_8006F8A0:
/* 8006F8A0  3C 60 80 3E */	lis r3, m_gamePad__8mDoCPd_c@ha /* 0x803DD2D8@ha */
/* 8006F8A4  38 63 D2 D8 */	addi r3, r3, m_gamePad__8mDoCPd_c@l /* 0x803DD2D8@l */
/* 8006F8A8  80 63 00 00 */	lwz r3, 0(r3)
/* 8006F8AC  38 63 00 68 */	addi r3, r3, 0x68
/* 8006F8B0  48 27 20 C9 */	bl stopPatternedRumbleAtThePeriod__Q210JUTGamePad7CRumbleFv
/* 8006F8B4  3C 60 80 3E */	lis r3, m_gamePad__8mDoCPd_c@ha /* 0x803DD2D8@ha */
/* 8006F8B8  38 63 D2 D8 */	addi r3, r3, m_gamePad__8mDoCPd_c@l /* 0x803DD2D8@l */
/* 8006F8BC  80 63 00 00 */	lwz r3, 0(r3)
/* 8006F8C0  A8 63 00 7C */	lha r3, 0x7c(r3)
/* 8006F8C4  38 80 00 00 */	li r4, 0
/* 8006F8C8  48 27 1D C5 */	bl stopMotor__Q210JUTGamePad7CRumbleFib
/* 8006F8CC  38 00 FF 9D */	li r0, -99
/* 8006F8D0  90 1F 00 84 */	stw r0, 0x84(r31)
/* 8006F8D4  90 1F 00 68 */	stw r0, 0x68(r31)
lbl_8006F8D8:
/* 8006F8D8  38 00 00 00 */	li r0, 0
/* 8006F8DC  90 1F 00 28 */	stw r0, 0x28(r31)
/* 8006F8E0  90 1F 00 00 */	stw r0, 0(r31)
/* 8006F8E4  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 8006F8E8  90 1F 00 50 */	stw r0, 0x50(r31)
/* 8006F8EC  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8006F8F0  2C 03 00 00 */	cmpwi r3, 0
/* 8006F8F4  41 80 00 28 */	blt lbl_8006F91C
/* 8006F8F8  38 03 00 01 */	addi r0, r3, 1
/* 8006F8FC  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8006F900  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8006F904  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8006F908  7C 03 00 00 */	cmpw r3, r0
/* 8006F90C  40 81 00 10 */	ble lbl_8006F91C
/* 8006F910  80 1F 00 00 */	lwz r0, 0(r31)
/* 8006F914  60 00 00 01 */	ori r0, r0, 1
/* 8006F918  90 1F 00 00 */	stw r0, 0(r31)
lbl_8006F91C:
/* 8006F91C  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8006F920  2C 03 00 00 */	cmpwi r3, 0
/* 8006F924  41 80 00 28 */	blt lbl_8006F94C
/* 8006F928  38 03 00 01 */	addi r0, r3, 1
/* 8006F92C  90 1F 00 64 */	stw r0, 0x64(r31)
/* 8006F930  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8006F934  80 1F 00 68 */	lwz r0, 0x68(r31)
/* 8006F938  7C 03 00 00 */	cmpw r3, r0
/* 8006F93C  40 81 00 10 */	ble lbl_8006F94C
/* 8006F940  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 8006F944  60 00 00 01 */	ori r0, r0, 1
/* 8006F948  90 1F 00 50 */	stw r0, 0x50(r31)
lbl_8006F94C:
/* 8006F94C  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 8006F950  2C 03 00 00 */	cmpwi r3, 0
/* 8006F954  41 80 00 24 */	blt lbl_8006F978
/* 8006F958  38 03 00 01 */	addi r0, r3, 1
/* 8006F95C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8006F960  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 8006F964  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 8006F968  7C 03 00 00 */	cmpw r3, r0
/* 8006F96C  40 81 00 0C */	ble lbl_8006F978
/* 8006F970  38 00 00 00 */	li r0, 0
/* 8006F974  90 1F 00 4C */	stw r0, 0x4c(r31)
lbl_8006F978:
/* 8006F978  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 8006F97C  2C 03 03 A2 */	cmpwi r3, 0x3a2
/* 8006F980  41 80 00 10 */	blt lbl_8006F990
/* 8006F984  38 00 00 00 */	li r0, 0
/* 8006F988  90 1F 00 80 */	stw r0, 0x80(r31)
/* 8006F98C  48 00 00 70 */	b lbl_8006F9FC
lbl_8006F990:
/* 8006F990  2C 03 03 84 */	cmpwi r3, 0x384
/* 8006F994  41 80 00 40 */	blt lbl_8006F9D4
/* 8006F998  3C 60 80 3E */	lis r3, m_gamePad__8mDoCPd_c@ha /* 0x803DD2D8@ha */
/* 8006F99C  38 63 D2 D8 */	addi r3, r3, m_gamePad__8mDoCPd_c@l /* 0x803DD2D8@l */
/* 8006F9A0  80 63 00 00 */	lwz r3, 0(r3)
/* 8006F9A4  38 63 00 68 */	addi r3, r3, 0x68
/* 8006F9A8  48 27 1F D1 */	bl stopPatternedRumbleAtThePeriod__Q210JUTGamePad7CRumbleFv
/* 8006F9AC  3C 60 80 3E */	lis r3, m_gamePad__8mDoCPd_c@ha /* 0x803DD2D8@ha */
/* 8006F9B0  38 63 D2 D8 */	addi r3, r3, m_gamePad__8mDoCPd_c@l /* 0x803DD2D8@l */
/* 8006F9B4  80 63 00 00 */	lwz r3, 0(r3)
/* 8006F9B8  A8 63 00 7C */	lha r3, 0x7c(r3)
/* 8006F9BC  38 80 00 00 */	li r4, 0
/* 8006F9C0  48 27 1C CD */	bl stopMotor__Q210JUTGamePad7CRumbleFib
/* 8006F9C4  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 8006F9C8  38 03 00 01 */	addi r0, r3, 1
/* 8006F9CC  90 1F 00 80 */	stw r0, 0x80(r31)
/* 8006F9D0  48 00 00 2C */	b lbl_8006F9FC
lbl_8006F9D4:
/* 8006F9D4  2C 03 00 00 */	cmpwi r3, 0
/* 8006F9D8  41 80 00 24 */	blt lbl_8006F9FC
/* 8006F9DC  38 03 00 01 */	addi r0, r3, 1
/* 8006F9E0  90 1F 00 80 */	stw r0, 0x80(r31)
/* 8006F9E4  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 8006F9E8  80 1F 00 84 */	lwz r0, 0x84(r31)
/* 8006F9EC  7C 03 00 00 */	cmpw r3, r0
/* 8006F9F0  40 81 00 0C */	ble lbl_8006F9FC
/* 8006F9F4  38 00 00 00 */	li r0, 0
/* 8006F9F8  90 1F 00 80 */	stw r0, 0x80(r31)
lbl_8006F9FC:
/* 8006F9FC  80 7F 00 88 */	lwz r3, 0x88(r31)
/* 8006FA00  38 03 00 01 */	addi r0, r3, 1
/* 8006FA04  90 1F 00 88 */	stw r0, 0x88(r31)
/* 8006FA08  38 60 00 01 */	li r3, 1
/* 8006FA0C  39 61 00 60 */	addi r11, r1, 0x60
/* 8006FA10  48 2F 28 19 */	bl _restgpr_29
/* 8006FA14  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8006FA18  7C 08 03 A6 */	mtlr r0
/* 8006FA1C  38 21 00 60 */	addi r1, r1, 0x60
/* 8006FA20  4E 80 00 20 */	blr 
