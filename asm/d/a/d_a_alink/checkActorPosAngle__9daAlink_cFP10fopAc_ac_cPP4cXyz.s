lbl_800A0868:
/* 800A0868  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A086C  7C 08 02 A6 */	mflr r0
/* 800A0870  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A0874  39 61 00 20 */	addi r11, r1, 0x20
/* 800A0878  48 2C 19 61 */	bl _savegpr_28
/* 800A087C  7C 7C 1B 78 */	mr r28, r3
/* 800A0880  7C 9D 23 79 */	or. r29, r4, r4
/* 800A0884  7C BE 2B 78 */	mr r30, r5
/* 800A0888  41 82 00 98 */	beq lbl_800A0920
/* 800A088C  38 9D 05 38 */	addi r4, r29, 0x538
/* 800A0890  4B FF FF 49 */	bl checkAttentionPosAngle__9daAlink_cFP4cXyz
/* 800A0894  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A0898  41 82 00 88 */	beq lbl_800A0920
/* 800A089C  AB FD 00 08 */	lha r31, 8(r29)
/* 800A08A0  7F A3 EB 78 */	mr r3, r29
/* 800A08A4  48 03 BC A5 */	bl checkEnemyGroup__9daAlink_cFP10fopAc_ac_c
/* 800A08A8  2C 03 00 00 */	cmpwi r3, 0
/* 800A08AC  41 82 00 24 */	beq lbl_800A08D0
/* 800A08B0  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 800A08B4  D0 1C 35 04 */	stfs f0, 0x3504(r28)
/* 800A08B8  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 800A08BC  D0 1C 35 08 */	stfs f0, 0x3508(r28)
/* 800A08C0  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 800A08C4  D0 1C 35 0C */	stfs f0, 0x350c(r28)
/* 800A08C8  38 00 00 50 */	li r0, 0x50
/* 800A08CC  B0 1C 31 1C */	sth r0, 0x311c(r28)
lbl_800A08D0:
/* 800A08D0  2C 1F 01 59 */	cmpwi r31, 0x159
/* 800A08D4  41 82 00 18 */	beq lbl_800A08EC
/* 800A08D8  2C 1F 02 16 */	cmpwi r31, 0x216
/* 800A08DC  40 82 00 34 */	bne lbl_800A0910
/* 800A08E0  88 1D 0B 01 */	lbz r0, 0xb01(r29)
/* 800A08E4  28 00 00 00 */	cmplwi r0, 0
/* 800A08E8  40 82 00 28 */	bne lbl_800A0910
lbl_800A08EC:
/* 800A08EC  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 800A08F0  60 00 01 00 */	ori r0, r0, 0x100
/* 800A08F4  90 1C 05 74 */	stw r0, 0x574(r28)
/* 800A08F8  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 800A08FC  D0 1C 36 00 */	stfs f0, 0x3600(r28)
/* 800A0900  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 800A0904  D0 1C 36 04 */	stfs f0, 0x3604(r28)
/* 800A0908  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 800A090C  D0 1C 36 08 */	stfs f0, 0x3608(r28)
lbl_800A0910:
/* 800A0910  38 1D 05 38 */	addi r0, r29, 0x538
/* 800A0914  90 1E 00 00 */	stw r0, 0(r30)
/* 800A0918  38 60 00 01 */	li r3, 1
/* 800A091C  48 00 00 08 */	b lbl_800A0924
lbl_800A0920:
/* 800A0920  38 60 00 00 */	li r3, 0
lbl_800A0924:
/* 800A0924  39 61 00 20 */	addi r11, r1, 0x20
/* 800A0928  48 2C 18 FD */	bl _restgpr_28
/* 800A092C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A0930  7C 08 03 A6 */	mtlr r0
/* 800A0934  38 21 00 20 */	addi r1, r1, 0x20
/* 800A0938  4E 80 00 20 */	blr 
