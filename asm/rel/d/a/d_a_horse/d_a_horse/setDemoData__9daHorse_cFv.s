lbl_8083AEC0:
/* 8083AEC0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8083AEC4  7C 08 02 A6 */	mflr r0
/* 8083AEC8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8083AECC  39 61 00 40 */	addi r11, r1, 0x40
/* 8083AED0  4B B2 73 01 */	bl _savegpr_26
/* 8083AED4  7C 7A 1B 78 */	mr r26, r3
/* 8083AED8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8083AEDC  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8083AEE0  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 8083AEE4  28 00 00 00 */	cmplwi r0, 0
/* 8083AEE8  40 82 00 10 */	bne lbl_8083AEF8
/* 8083AEEC  80 1A 17 44 */	lwz r0, 0x1744(r26)
/* 8083AEF0  54 00 01 CA */	rlwinm r0, r0, 0, 7, 5
/* 8083AEF4  90 1A 17 44 */	stw r0, 0x1744(r26)
lbl_8083AEF8:
/* 8083AEF8  38 00 00 00 */	li r0, 0
/* 8083AEFC  88 7E 4F AD */	lbz r3, 0x4fad(r30)
/* 8083AF00  28 03 00 00 */	cmplwi r3, 0
/* 8083AF04  41 82 00 0C */	beq lbl_8083AF10
/* 8083AF08  28 03 00 02 */	cmplwi r3, 2
/* 8083AF0C  40 82 00 08 */	bne lbl_8083AF14
lbl_8083AF10:
/* 8083AF10  38 00 00 01 */	li r0, 1
lbl_8083AF14:
/* 8083AF14  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8083AF18  41 82 00 B0 */	beq lbl_8083AFC8
/* 8083AF1C  88 1A 16 B8 */	lbz r0, 0x16b8(r26)
/* 8083AF20  28 00 00 00 */	cmplwi r0, 0
/* 8083AF24  41 82 06 3C */	beq lbl_8083B560
/* 8083AF28  80 9A 17 40 */	lwz r4, 0x1740(r26)
/* 8083AF2C  38 00 00 00 */	li r0, 0
/* 8083AF30  98 1A 16 B8 */	stb r0, 0x16b8(r26)
/* 8083AF34  90 1A 17 40 */	stw r0, 0x1740(r26)
/* 8083AF38  90 1A 17 28 */	stw r0, 0x1728(r26)
/* 8083AF3C  38 00 FF FF */	li r0, -1
/* 8083AF40  90 1A 17 2C */	stw r0, 0x172c(r26)
/* 8083AF44  3C 60 80 84 */	lis r3, lit_4306@ha /* 0x808455FC@ha */
/* 8083AF48  C0 03 55 FC */	lfs f0, lit_4306@l(r3)  /* 0x808455FC@l */
/* 8083AF4C  D0 1A 17 88 */	stfs f0, 0x1788(r26)
/* 8083AF50  80 1A 17 44 */	lwz r0, 0x1744(r26)
/* 8083AF54  54 00 03 56 */	rlwinm r0, r0, 0, 0xd, 0xb
/* 8083AF58  90 1A 17 44 */	stw r0, 0x1744(r26)
/* 8083AF5C  80 1A 17 44 */	lwz r0, 0x1744(r26)
/* 8083AF60  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8083AF64  41 82 00 18 */	beq lbl_8083AF7C
/* 8083AF68  80 1A 17 44 */	lwz r0, 0x1744(r26)
/* 8083AF6C  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 8083AF70  90 1A 17 44 */	stw r0, 0x1744(r26)
/* 8083AF74  C0 1A 17 94 */	lfs f0, 0x1794(r26)
/* 8083AF78  D0 1A 05 2C */	stfs f0, 0x52c(r26)
lbl_8083AF7C:
/* 8083AF7C  28 04 00 0C */	cmplwi r4, 0xc
/* 8083AF80  41 82 05 E0 */	beq lbl_8083B560
/* 8083AF84  28 04 00 0F */	cmplwi r4, 0xf
/* 8083AF88  41 82 05 D8 */	beq lbl_8083B560
/* 8083AF8C  28 04 00 0D */	cmplwi r4, 0xd
/* 8083AF90  41 82 05 D0 */	beq lbl_8083B560
/* 8083AF94  C0 1A 05 2C */	lfs f0, 0x52c(r26)
/* 8083AF98  FC 00 02 10 */	fabs f0, f0
/* 8083AF9C  FC 20 00 18 */	frsp f1, f0
/* 8083AFA0  3C 60 80 84 */	lis r3, lit_5722@ha /* 0x80845678@ha */
/* 8083AFA4  C0 03 56 78 */	lfs f0, lit_5722@l(r3)  /* 0x80845678@l */
/* 8083AFA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083AFAC  40 80 00 10 */	bge lbl_8083AFBC
/* 8083AFB0  7F 43 D3 78 */	mr r3, r26
/* 8083AFB4  48 00 67 55 */	bl procWaitInit__9daHorse_cFv
/* 8083AFB8  48 00 05 A8 */	b lbl_8083B560
lbl_8083AFBC:
/* 8083AFBC  7F 43 D3 78 */	mr r3, r26
/* 8083AFC0  48 00 6F 45 */	bl procMoveInit__9daHorse_cFv
/* 8083AFC4  48 00 05 9C */	b lbl_8083B560
lbl_8083AFC8:
/* 8083AFC8  38 00 00 00 */	li r0, 0
/* 8083AFCC  B0 1A 16 F8 */	sth r0, 0x16f8(r26)
/* 8083AFD0  3C 60 80 45 */	lis r3, m_object__7dDemo_c@ha /* 0x80450E20@ha */
/* 8083AFD4  38 63 0E 20 */	addi r3, r3, m_object__7dDemo_c@l /* 0x80450E20@l */
/* 8083AFD8  80 63 00 00 */	lwz r3, 0(r3)
/* 8083AFDC  88 9A 04 98 */	lbz r4, 0x498(r26)
/* 8083AFE0  4B 7F E0 A9 */	bl getActor__14dDemo_object_cFUc
/* 8083AFE4  7C 7F 1B 78 */	mr r31, r3
/* 8083AFE8  3B A0 00 00 */	li r29, 0
/* 8083AFEC  38 00 00 01 */	li r0, 1
/* 8083AFF0  90 01 00 18 */	stw r0, 0x18(r1)
/* 8083AFF4  3B 60 00 00 */	li r27, 0
/* 8083AFF8  3B DE 4F F8 */	addi r30, r30, 0x4ff8
/* 8083AFFC  7F C3 F3 78 */	mr r3, r30
/* 8083B000  3C 80 80 84 */	lis r4, d_a_horse__stringBase0@ha /* 0x8084585C@ha */
/* 8083B004  38 84 58 5C */	addi r4, r4, d_a_horse__stringBase0@l /* 0x8084585C@l */
/* 8083B008  38 84 00 48 */	addi r4, r4, 0x48
/* 8083B00C  7F 45 D3 78 */	mr r5, r26
/* 8083B010  38 C0 00 00 */	li r6, 0
/* 8083B014  4B 80 CB 09 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8083B018  90 7A 17 2C */	stw r3, 0x172c(r26)
/* 8083B01C  28 1F 00 00 */	cmplwi r31, 0
/* 8083B020  41 82 01 70 */	beq lbl_8083B190
/* 8083B024  80 1A 05 70 */	lwz r0, 0x570(r26)
/* 8083B028  90 1F 00 48 */	stw r0, 0x48(r31)
/* 8083B02C  38 00 FF FF */	li r0, -1
/* 8083B030  90 1A 17 2C */	stw r0, 0x172c(r26)
/* 8083B034  88 1A 16 B8 */	lbz r0, 0x16b8(r26)
/* 8083B038  28 00 00 01 */	cmplwi r0, 1
/* 8083B03C  41 82 00 14 */	beq lbl_8083B050
/* 8083B040  38 00 00 01 */	li r0, 1
/* 8083B044  98 1A 16 B8 */	stb r0, 0x16b8(r26)
/* 8083B048  7F 43 D3 78 */	mr r3, r26
/* 8083B04C  48 00 66 BD */	bl procWaitInit__9daHorse_cFv
lbl_8083B050:
/* 8083B050  A0 1F 00 04 */	lhz r0, 4(r31)
/* 8083B054  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8083B058  41 82 00 0C */	beq lbl_8083B064
/* 8083B05C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8083B060  90 01 00 18 */	stw r0, 0x18(r1)
lbl_8083B064:
/* 8083B064  A0 7F 00 04 */	lhz r3, 4(r31)
/* 8083B068  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8083B06C  41 82 00 0C */	beq lbl_8083B078
/* 8083B070  3B BF 00 08 */	addi r29, r31, 8
/* 8083B074  48 00 00 08 */	b lbl_8083B07C
lbl_8083B078:
/* 8083B078  3B BA 04 D0 */	addi r29, r26, 0x4d0
lbl_8083B07C:
/* 8083B07C  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8083B080  41 82 00 0C */	beq lbl_8083B08C
/* 8083B084  AB 9F 00 22 */	lha r28, 0x22(r31)
/* 8083B088  48 00 00 08 */	b lbl_8083B090
lbl_8083B08C:
/* 8083B08C  AB 9A 04 E6 */	lha r28, 0x4e6(r26)
lbl_8083B090:
/* 8083B090  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8083B094  41 82 02 24 */	beq lbl_8083B2B8
/* 8083B098  48 00 00 D0 */	b lbl_8083B168
lbl_8083B09C:
/* 8083B09C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8083B0A0  2C 00 00 00 */	cmpwi r0, 0
/* 8083B0A4  40 82 00 C4 */	bne lbl_8083B168
/* 8083B0A8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8083B0AC  2C 00 00 00 */	cmpwi r0, 0
/* 8083B0B0  40 82 00 B8 */	bne lbl_8083B168
/* 8083B0B4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8083B0B8  2C 00 00 02 */	cmpwi r0, 2
/* 8083B0BC  40 82 00 20 */	bne lbl_8083B0DC
/* 8083B0C0  A0 01 00 08 */	lhz r0, 8(r1)
/* 8083B0C4  28 00 00 00 */	cmplwi r0, 0
/* 8083B0C8  41 82 00 A0 */	beq lbl_8083B168
/* 8083B0CC  80 1A 17 4C */	lwz r0, 0x174c(r26)
/* 8083B0D0  60 00 00 40 */	ori r0, r0, 0x40
/* 8083B0D4  90 1A 17 4C */	stw r0, 0x174c(r26)
/* 8083B0D8  48 00 00 90 */	b lbl_8083B168
lbl_8083B0DC:
/* 8083B0DC  2C 00 00 03 */	cmpwi r0, 3
/* 8083B0E0  40 82 00 20 */	bne lbl_8083B100
/* 8083B0E4  A0 01 00 08 */	lhz r0, 8(r1)
/* 8083B0E8  28 00 00 00 */	cmplwi r0, 0
/* 8083B0EC  41 82 00 7C */	beq lbl_8083B168
/* 8083B0F0  80 1A 17 48 */	lwz r0, 0x1748(r26)
/* 8083B0F4  60 00 00 01 */	ori r0, r0, 1
/* 8083B0F8  90 1A 17 48 */	stw r0, 0x1748(r26)
/* 8083B0FC  48 00 00 6C */	b lbl_8083B168
lbl_8083B100:
/* 8083B100  2C 00 00 04 */	cmpwi r0, 4
/* 8083B104  40 82 00 20 */	bne lbl_8083B124
/* 8083B108  A0 01 00 08 */	lhz r0, 8(r1)
/* 8083B10C  28 00 00 00 */	cmplwi r0, 0
/* 8083B110  41 82 00 58 */	beq lbl_8083B168
/* 8083B114  80 1A 17 48 */	lwz r0, 0x1748(r26)
/* 8083B118  60 00 00 80 */	ori r0, r0, 0x80
/* 8083B11C  90 1A 17 48 */	stw r0, 0x1748(r26)
/* 8083B120  48 00 00 48 */	b lbl_8083B168
lbl_8083B124:
/* 8083B124  2C 00 00 05 */	cmpwi r0, 5
/* 8083B128  40 82 00 20 */	bne lbl_8083B148
/* 8083B12C  A0 01 00 08 */	lhz r0, 8(r1)
/* 8083B130  28 00 00 00 */	cmplwi r0, 0
/* 8083B134  41 82 00 34 */	beq lbl_8083B168
/* 8083B138  80 1A 17 48 */	lwz r0, 0x1748(r26)
/* 8083B13C  60 00 01 00 */	ori r0, r0, 0x100
/* 8083B140  90 1A 17 48 */	stw r0, 0x1748(r26)
/* 8083B144  48 00 00 24 */	b lbl_8083B168
lbl_8083B148:
/* 8083B148  2C 00 00 06 */	cmpwi r0, 6
/* 8083B14C  40 82 00 1C */	bne lbl_8083B168
/* 8083B150  A0 01 00 08 */	lhz r0, 8(r1)
/* 8083B154  28 00 00 00 */	cmplwi r0, 0
/* 8083B158  41 82 00 10 */	beq lbl_8083B168
/* 8083B15C  80 1A 17 48 */	lwz r0, 0x1748(r26)
/* 8083B160  60 00 02 00 */	ori r0, r0, 0x200
/* 8083B164  90 1A 17 48 */	stw r0, 0x1748(r26)
lbl_8083B168:
/* 8083B168  7F E3 FB 78 */	mr r3, r31
/* 8083B16C  38 81 00 14 */	addi r4, r1, 0x14
/* 8083B170  38 A1 00 10 */	addi r5, r1, 0x10
/* 8083B174  38 C1 00 0C */	addi r6, r1, 0xc
/* 8083B178  38 E1 00 08 */	addi r7, r1, 8
/* 8083B17C  39 00 00 00 */	li r8, 0
/* 8083B180  4B 7F D1 B9 */	bl getDemoIDData__13dDemo_actor_cFPiPiPiPUsPUc
/* 8083B184  2C 03 00 00 */	cmpwi r3, 0
/* 8083B188  40 82 FF 14 */	bne lbl_8083B09C
/* 8083B18C  48 00 01 2C */	b lbl_8083B2B8
lbl_8083B190:
/* 8083B190  88 1A 16 B8 */	lbz r0, 0x16b8(r26)
/* 8083B194  28 00 00 00 */	cmplwi r0, 0
/* 8083B198  40 82 00 0C */	bne lbl_8083B1A4
/* 8083B19C  38 00 00 02 */	li r0, 2
/* 8083B1A0  98 1A 16 B8 */	stb r0, 0x16b8(r26)
lbl_8083B1A4:
/* 8083B1A4  80 9A 17 2C */	lwz r4, 0x172c(r26)
/* 8083B1A8  2C 04 FF FF */	cmpwi r4, -1
/* 8083B1AC  41 82 01 0C */	beq lbl_8083B2B8
/* 8083B1B0  7F C3 F3 78 */	mr r3, r30
/* 8083B1B4  4B 80 CD A9 */	bl getMyNowCutName__16dEvent_manager_cFi
/* 8083B1B8  28 03 00 00 */	cmplwi r3, 0
/* 8083B1BC  41 82 00 FC */	beq lbl_8083B2B8
/* 8083B1C0  88 03 00 02 */	lbz r0, 2(r3)
/* 8083B1C4  7C 05 07 74 */	extsb r5, r0
/* 8083B1C8  88 03 00 00 */	lbz r0, 0(r3)
/* 8083B1CC  7C 04 07 74 */	extsb r4, r0
/* 8083B1D0  38 04 FF D0 */	addi r0, r4, -48
/* 8083B1D4  1C 80 00 64 */	mulli r4, r0, 0x64
/* 8083B1D8  88 03 00 01 */	lbz r0, 1(r3)
/* 8083B1DC  7C 03 07 74 */	extsb r3, r0
/* 8083B1E0  38 03 FF D0 */	addi r0, r3, -48
/* 8083B1E4  1C 00 00 0A */	mulli r0, r0, 0xa
/* 8083B1E8  7C 64 02 14 */	add r3, r4, r0
/* 8083B1EC  7C 63 2A 14 */	add r3, r3, r5
/* 8083B1F0  38 03 FF D0 */	addi r0, r3, -48
/* 8083B1F4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8083B1F8  7F C3 F3 78 */	mr r3, r30
/* 8083B1FC  80 9A 17 2C */	lwz r4, 0x172c(r26)
/* 8083B200  3C A0 80 84 */	lis r5, d_a_horse__stringBase0@ha /* 0x8084585C@ha */
/* 8083B204  38 A5 58 5C */	addi r5, r5, d_a_horse__stringBase0@l /* 0x8084585C@l */
/* 8083B208  38 A5 00 4E */	addi r5, r5, 0x4e
/* 8083B20C  38 C0 00 01 */	li r6, 1
/* 8083B210  4B 80 CE DD */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8083B214  7C 7D 1B 78 */	mr r29, r3
/* 8083B218  28 03 00 00 */	cmplwi r3, 0
/* 8083B21C  40 82 00 10 */	bne lbl_8083B22C
/* 8083B220  7F C3 F3 78 */	mr r3, r30
/* 8083B224  4B 80 D1 BD */	bl getGoal__16dEvent_manager_cFv
/* 8083B228  7C 7D 1B 78 */	mr r29, r3
lbl_8083B22C:
/* 8083B22C  7F C3 F3 78 */	mr r3, r30
/* 8083B230  80 9A 17 2C */	lwz r4, 0x172c(r26)
/* 8083B234  3C A0 80 84 */	lis r5, d_a_horse__stringBase0@ha /* 0x8084585C@ha */
/* 8083B238  38 A5 58 5C */	addi r5, r5, d_a_horse__stringBase0@l /* 0x8084585C@l */
/* 8083B23C  38 A5 00 52 */	addi r5, r5, 0x52
/* 8083B240  38 C0 00 03 */	li r6, 3
/* 8083B244  4B 80 CE A9 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8083B248  28 03 00 00 */	cmplwi r3, 0
/* 8083B24C  41 82 00 10 */	beq lbl_8083B25C
/* 8083B250  80 03 00 00 */	lwz r0, 0(r3)
/* 8083B254  7C 1C 07 34 */	extsh r28, r0
/* 8083B258  48 00 00 08 */	b lbl_8083B260
lbl_8083B25C:
/* 8083B25C  AB 9A 04 E6 */	lha r28, 0x4e6(r26)
lbl_8083B260:
/* 8083B260  7F C3 F3 78 */	mr r3, r30
/* 8083B264  80 9A 17 2C */	lwz r4, 0x172c(r26)
/* 8083B268  3C A0 80 84 */	lis r5, d_a_horse__stringBase0@ha /* 0x8084585C@ha */
/* 8083B26C  38 A5 58 5C */	addi r5, r5, d_a_horse__stringBase0@l /* 0x8084585C@l */
/* 8083B270  38 A5 00 58 */	addi r5, r5, 0x58
/* 8083B274  38 C0 00 03 */	li r6, 3
/* 8083B278  4B 80 CE 75 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8083B27C  7C 7B 1B 78 */	mr r27, r3
/* 8083B280  7F C3 F3 78 */	mr r3, r30
/* 8083B284  80 9A 17 2C */	lwz r4, 0x172c(r26)
/* 8083B288  3C A0 80 84 */	lis r5, d_a_horse__stringBase0@ha /* 0x8084585C@ha */
/* 8083B28C  38 A5 58 5C */	addi r5, r5, d_a_horse__stringBase0@l /* 0x8084585C@l */
/* 8083B290  38 A5 00 5D */	addi r5, r5, 0x5d
/* 8083B294  38 C0 00 03 */	li r6, 3
/* 8083B298  4B 80 CE 55 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8083B29C  28 03 00 00 */	cmplwi r3, 0
/* 8083B2A0  41 82 00 18 */	beq lbl_8083B2B8
/* 8083B2A4  80 1A 17 44 */	lwz r0, 0x1744(r26)
/* 8083B2A8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8083B2AC  40 82 00 0C */	bne lbl_8083B2B8
/* 8083B2B0  38 00 00 01 */	li r0, 1
/* 8083B2B4  90 01 00 18 */	stw r0, 0x18(r1)
lbl_8083B2B8:
/* 8083B2B8  88 7A 16 B8 */	lbz r3, 0x16b8(r26)
/* 8083B2BC  28 03 00 01 */	cmplwi r3, 1
/* 8083B2C0  41 82 00 18 */	beq lbl_8083B2D8
/* 8083B2C4  28 03 00 02 */	cmplwi r3, 2
/* 8083B2C8  40 82 01 38 */	bne lbl_8083B400
/* 8083B2CC  80 1A 17 2C */	lwz r0, 0x172c(r26)
/* 8083B2D0  2C 00 FF FF */	cmpwi r0, -1
/* 8083B2D4  41 82 01 2C */	beq lbl_8083B400
lbl_8083B2D8:
/* 8083B2D8  28 1B 00 00 */	cmplwi r27, 0
/* 8083B2DC  41 82 00 10 */	beq lbl_8083B2EC
/* 8083B2E0  80 1B 00 00 */	lwz r0, 0(r27)
/* 8083B2E4  90 1A 17 28 */	stw r0, 0x1728(r26)
/* 8083B2E8  48 00 00 0C */	b lbl_8083B2F4
lbl_8083B2EC:
/* 8083B2EC  38 00 00 00 */	li r0, 0
/* 8083B2F0  90 1A 17 28 */	stw r0, 0x1728(r26)
lbl_8083B2F4:
/* 8083B2F4  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8083B2F8  28 03 00 05 */	cmplwi r3, 5
/* 8083B2FC  40 82 00 38 */	bne lbl_8083B334
/* 8083B300  3C 60 80 84 */	lis r3, lit_4306@ha /* 0x808455FC@ha */
/* 8083B304  C0 03 55 FC */	lfs f0, lit_4306@l(r3)  /* 0x808455FC@l */
/* 8083B308  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 8083B30C  38 7A 08 94 */	addi r3, r26, 0x894
/* 8083B310  4B A2 86 4D */	bl ClrCcMove__9cCcD_SttsFv
/* 8083B314  7F 43 D3 78 */	mr r3, r26
/* 8083B318  7F A4 EB 78 */	mr r4, r29
/* 8083B31C  7F 85 E3 78 */	mr r5, r28
/* 8083B320  39 9A 18 E0 */	addi r12, r26, 0x18e0
/* 8083B324  4B B2 6D 61 */	bl __ptmf_scall
/* 8083B328  60 00 00 00 */	nop 
/* 8083B32C  B3 9A 16 FC */	sth r28, 0x16fc(r26)
/* 8083B330  48 00 00 AC */	b lbl_8083B3DC
lbl_8083B334:
/* 8083B334  38 03 FF FE */	addi r0, r3, -2
/* 8083B338  28 00 00 01 */	cmplwi r0, 1
/* 8083B33C  40 81 00 18 */	ble lbl_8083B354
/* 8083B340  38 03 FF F6 */	addi r0, r3, -10
/* 8083B344  28 00 00 01 */	cmplwi r0, 1
/* 8083B348  40 81 00 0C */	ble lbl_8083B354
/* 8083B34C  28 03 00 04 */	cmplwi r3, 4
/* 8083B350  40 82 00 18 */	bne lbl_8083B368
lbl_8083B354:
/* 8083B354  7F 43 D3 78 */	mr r3, r26
/* 8083B358  38 81 00 18 */	addi r4, r1, 0x18
/* 8083B35C  7F A5 EB 78 */	mr r5, r29
/* 8083B360  4B FF F9 8D */	bl setDemoMoveData__9daHorse_cFPUlPC4cXyz
/* 8083B364  48 00 00 78 */	b lbl_8083B3DC
lbl_8083B368:
/* 8083B368  88 1A 16 B8 */	lbz r0, 0x16b8(r26)
/* 8083B36C  28 00 00 02 */	cmplwi r0, 2
/* 8083B370  40 82 00 6C */	bne lbl_8083B3DC
/* 8083B374  28 03 00 07 */	cmplwi r3, 7
/* 8083B378  40 82 00 64 */	bne lbl_8083B3DC
/* 8083B37C  7F C3 F3 78 */	mr r3, r30
/* 8083B380  80 9A 17 2C */	lwz r4, 0x172c(r26)
/* 8083B384  3C A0 80 84 */	lis r5, d_a_horse__stringBase0@ha /* 0x8084585C@ha */
/* 8083B388  38 A5 58 5C */	addi r5, r5, d_a_horse__stringBase0@l /* 0x8084585C@l */
/* 8083B38C  38 A5 00 62 */	addi r5, r5, 0x62
/* 8083B390  38 C0 00 00 */	li r6, 0
/* 8083B394  4B 80 CD 59 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8083B398  28 03 00 00 */	cmplwi r3, 0
/* 8083B39C  41 82 00 14 */	beq lbl_8083B3B0
/* 8083B3A0  C0 03 00 00 */	lfs f0, 0(r3)
/* 8083B3A4  D0 1A 17 68 */	stfs f0, 0x1768(r26)
/* 8083B3A8  C0 1A 17 68 */	lfs f0, 0x1768(r26)
/* 8083B3AC  D0 1A 17 70 */	stfs f0, 0x1770(r26)
lbl_8083B3B0:
/* 8083B3B0  7F C3 F3 78 */	mr r3, r30
/* 8083B3B4  80 9A 17 2C */	lwz r4, 0x172c(r26)
/* 8083B3B8  3C A0 80 84 */	lis r5, d_a_horse__stringBase0@ha /* 0x8084585C@ha */
/* 8083B3BC  38 A5 58 5C */	addi r5, r5, d_a_horse__stringBase0@l /* 0x8084585C@l */
/* 8083B3C0  38 A5 00 68 */	addi r5, r5, 0x68
/* 8083B3C4  38 C0 00 00 */	li r6, 0
/* 8083B3C8  4B 80 CD 25 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8083B3CC  28 03 00 00 */	cmplwi r3, 0
/* 8083B3D0  41 82 00 0C */	beq lbl_8083B3DC
/* 8083B3D4  C0 03 00 00 */	lfs f0, 0(r3)
/* 8083B3D8  D0 1A 17 6C */	stfs f0, 0x176c(r26)
lbl_8083B3DC:
/* 8083B3DC  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8083B3E0  90 1A 17 40 */	stw r0, 0x1740(r26)
/* 8083B3E4  80 1A 17 40 */	lwz r0, 0x1740(r26)
/* 8083B3E8  28 00 00 01 */	cmplwi r0, 1
/* 8083B3EC  40 82 01 44 */	bne lbl_8083B530
/* 8083B3F0  3C 60 80 84 */	lis r3, lit_4306@ha /* 0x808455FC@ha */
/* 8083B3F4  C0 03 55 FC */	lfs f0, lit_4306@l(r3)  /* 0x808455FC@l */
/* 8083B3F8  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 8083B3FC  48 00 01 34 */	b lbl_8083B530
lbl_8083B400:
/* 8083B400  28 03 00 03 */	cmplwi r3, 3
/* 8083B404  40 82 00 C8 */	bne lbl_8083B4CC
/* 8083B408  80 1A 17 40 */	lwz r0, 0x1740(r26)
/* 8083B40C  28 00 00 0E */	cmplwi r0, 0xe
/* 8083B410  40 82 00 44 */	bne lbl_8083B454
/* 8083B414  80 7A 17 44 */	lwz r3, 0x1744(r26)
/* 8083B418  54 60 05 6B */	rlwinm. r0, r3, 0, 0x15, 0x15
/* 8083B41C  40 82 00 38 */	bne lbl_8083B454
/* 8083B420  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8083B424  41 82 00 1C */	beq lbl_8083B440
/* 8083B428  80 1A 17 44 */	lwz r0, 0x1744(r26)
/* 8083B42C  60 00 04 00 */	ori r0, r0, 0x400
/* 8083B430  90 1A 17 44 */	stw r0, 0x1744(r26)
/* 8083B434  C0 1A 05 2C */	lfs f0, 0x52c(r26)
/* 8083B438  D0 1A 17 94 */	stfs f0, 0x1794(r26)
/* 8083B43C  48 00 00 0C */	b lbl_8083B448
lbl_8083B440:
/* 8083B440  38 00 00 01 */	li r0, 1
/* 8083B444  90 1A 17 40 */	stw r0, 0x1740(r26)
lbl_8083B448:
/* 8083B448  3C 60 80 84 */	lis r3, lit_4306@ha /* 0x808455FC@ha */
/* 8083B44C  C0 03 55 FC */	lfs f0, lit_4306@l(r3)  /* 0x808455FC@l */
/* 8083B450  D0 1A 05 2C */	stfs f0, 0x52c(r26)
lbl_8083B454:
/* 8083B454  80 1A 17 40 */	lwz r0, 0x1740(r26)
/* 8083B458  28 00 00 02 */	cmplwi r0, 2
/* 8083B45C  41 82 00 24 */	beq lbl_8083B480
/* 8083B460  28 00 00 0A */	cmplwi r0, 0xa
/* 8083B464  41 82 00 1C */	beq lbl_8083B480
/* 8083B468  28 00 00 03 */	cmplwi r0, 3
/* 8083B46C  41 82 00 14 */	beq lbl_8083B480
/* 8083B470  28 00 00 0B */	cmplwi r0, 0xb
/* 8083B474  41 82 00 0C */	beq lbl_8083B480
/* 8083B478  28 00 00 04 */	cmplwi r0, 4
/* 8083B47C  40 82 00 14 */	bne lbl_8083B490
lbl_8083B480:
/* 8083B480  7F 43 D3 78 */	mr r3, r26
/* 8083B484  38 9A 17 40 */	addi r4, r26, 0x1740
/* 8083B488  38 BA 17 C4 */	addi r5, r26, 0x17c4
/* 8083B48C  4B FF F8 61 */	bl setDemoMoveData__9daHorse_cFPUlPC4cXyz
lbl_8083B490:
/* 8083B490  80 1A 17 40 */	lwz r0, 0x1740(r26)
/* 8083B494  28 00 00 05 */	cmplwi r0, 5
/* 8083B498  40 82 00 1C */	bne lbl_8083B4B4
/* 8083B49C  3C 60 80 84 */	lis r3, lit_4306@ha /* 0x808455FC@ha */
/* 8083B4A0  C0 03 55 FC */	lfs f0, lit_4306@l(r3)  /* 0x808455FC@l */
/* 8083B4A4  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 8083B4A8  38 7A 08 94 */	addi r3, r26, 0x894
/* 8083B4AC  4B A2 84 B1 */	bl ClrCcMove__9cCcD_SttsFv
/* 8083B4B0  48 00 00 80 */	b lbl_8083B530
lbl_8083B4B4:
/* 8083B4B4  28 00 00 01 */	cmplwi r0, 1
/* 8083B4B8  40 82 00 78 */	bne lbl_8083B530
/* 8083B4BC  3C 60 80 84 */	lis r3, lit_4306@ha /* 0x808455FC@ha */
/* 8083B4C0  C0 03 55 FC */	lfs f0, lit_4306@l(r3)  /* 0x808455FC@l */
/* 8083B4C4  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 8083B4C8  48 00 00 68 */	b lbl_8083B530
lbl_8083B4CC:
/* 8083B4CC  80 7A 17 44 */	lwz r3, 0x1744(r26)
/* 8083B4D0  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 8083B4D4  41 82 00 10 */	beq lbl_8083B4E4
/* 8083B4D8  38 00 00 0D */	li r0, 0xd
/* 8083B4DC  90 1A 17 40 */	stw r0, 0x1740(r26)
/* 8083B4E0  48 00 00 50 */	b lbl_8083B530
lbl_8083B4E4:
/* 8083B4E4  80 1A 17 40 */	lwz r0, 0x1740(r26)
/* 8083B4E8  28 00 00 00 */	cmplwi r0, 0
/* 8083B4EC  40 82 00 10 */	bne lbl_8083B4FC
/* 8083B4F0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8083B4F4  28 00 00 01 */	cmplwi r0, 1
/* 8083B4F8  41 82 00 30 */	beq lbl_8083B528
lbl_8083B4FC:
/* 8083B4FC  54 60 00 C7 */	rlwinm. r0, r3, 0, 3, 3
/* 8083B500  40 82 00 28 */	bne lbl_8083B528
/* 8083B504  88 1A 16 B4 */	lbz r0, 0x16b4(r26)
/* 8083B508  28 00 00 02 */	cmplwi r0, 2
/* 8083B50C  40 82 00 10 */	bne lbl_8083B51C
/* 8083B510  A8 1A 17 1C */	lha r0, 0x171c(r26)
/* 8083B514  2C 00 00 00 */	cmpwi r0, 0
/* 8083B518  40 82 00 10 */	bne lbl_8083B528
lbl_8083B51C:
/* 8083B51C  3C 60 80 84 */	lis r3, lit_4306@ha /* 0x808455FC@ha */
/* 8083B520  C0 03 55 FC */	lfs f0, lit_4306@l(r3)  /* 0x808455FC@l */
/* 8083B524  D0 1A 05 2C */	stfs f0, 0x52c(r26)
lbl_8083B528:
/* 8083B528  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8083B52C  90 1A 17 40 */	stw r0, 0x1740(r26)
lbl_8083B530:
/* 8083B530  80 9A 17 2C */	lwz r4, 0x172c(r26)
/* 8083B534  2C 04 FF FF */	cmpwi r4, -1
/* 8083B538  41 82 00 28 */	beq lbl_8083B560
/* 8083B53C  80 1A 17 40 */	lwz r0, 0x1740(r26)
/* 8083B540  28 00 00 01 */	cmplwi r0, 1
/* 8083B544  41 82 00 14 */	beq lbl_8083B558
/* 8083B548  28 00 00 06 */	cmplwi r0, 6
/* 8083B54C  41 82 00 0C */	beq lbl_8083B558
/* 8083B550  28 00 00 05 */	cmplwi r0, 5
/* 8083B554  40 82 00 0C */	bne lbl_8083B560
lbl_8083B558:
/* 8083B558  7F C3 F3 78 */	mr r3, r30
/* 8083B55C  4B 80 CC 21 */	bl cutEnd__16dEvent_manager_cFi
lbl_8083B560:
/* 8083B560  39 61 00 40 */	addi r11, r1, 0x40
/* 8083B564  4B B2 6C B9 */	bl _restgpr_26
/* 8083B568  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8083B56C  7C 08 03 A6 */	mtlr r0
/* 8083B570  38 21 00 40 */	addi r1, r1, 0x40
/* 8083B574  4E 80 00 20 */	blr 
