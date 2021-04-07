lbl_800EA3F4:
/* 800EA3F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EA3F8  7C 08 02 A6 */	mflr r0
/* 800EA3FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EA400  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EA404  7C 7F 1B 78 */	mr r31, r3
/* 800EA408  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 800EA40C  28 00 00 FF */	cmplwi r0, 0xff
/* 800EA410  41 82 00 14 */	beq lbl_800EA424
/* 800EA414  38 80 00 C2 */	li r4, 0xc2
/* 800EA418  38 A0 00 00 */	li r5, 0
/* 800EA41C  4B FD 89 C1 */	bl procPreActionUnequipInit__9daAlink_cFiP10fopAc_ac_c
/* 800EA420  48 00 00 98 */	b lbl_800EA4B8
lbl_800EA424:
/* 800EA424  38 80 00 C2 */	li r4, 0xc2
/* 800EA428  4B FD 89 7D */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800EA42C  2C 03 00 00 */	cmpwi r3, 0
/* 800EA430  40 82 00 0C */	bne lbl_800EA43C
/* 800EA434  38 60 00 00 */	li r3, 0
/* 800EA438  48 00 00 80 */	b lbl_800EA4B8
lbl_800EA43C:
/* 800EA43C  38 7F 28 54 */	addi r3, r31, 0x2854
/* 800EA440  48 07 48 09 */	bl setActor__16daPy_actorKeep_cFv
/* 800EA444  80 1F 28 58 */	lwz r0, 0x2858(r31)
/* 800EA448  28 00 00 00 */	cmplwi r0, 0
/* 800EA44C  40 82 00 20 */	bne lbl_800EA46C
/* 800EA450  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 800EA454  28 00 00 2B */	cmplwi r0, 0x2b
/* 800EA458  40 82 00 0C */	bne lbl_800EA464
/* 800EA45C  38 00 00 00 */	li r0, 0
/* 800EA460  98 1F 05 6A */	stb r0, 0x56a(r31)
lbl_800EA464:
/* 800EA464  38 60 00 00 */	li r3, 0
/* 800EA468  48 00 00 50 */	b lbl_800EA4B8
lbl_800EA46C:
/* 800EA46C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800EA470  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800EA474  38 00 00 03 */	li r0, 3
/* 800EA478  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 800EA47C  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800EA480  38 03 C0 00 */	addi r0, r3, -16384
/* 800EA484  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800EA488  3C 60 80 39 */	lis r3, m__21daAlinkHIO_atnMove_c0@ha /* 0x8038D714@ha */
/* 800EA48C  38 63 D7 14 */	addi r3, r3, m__21daAlinkHIO_atnMove_c0@l /* 0x8038D714@l */
/* 800EA490  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800EA494  D0 1F 05 94 */	stfs f0, 0x594(r31)
/* 800EA498  7F E3 FB 78 */	mr r3, r31
/* 800EA49C  38 80 01 21 */	li r4, 0x121
/* 800EA4A0  4B FC 2A E1 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800EA4A4  38 00 00 01 */	li r0, 1
/* 800EA4A8  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800EA4AC  38 00 00 00 */	li r0, 0
/* 800EA4B0  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800EA4B4  38 60 00 01 */	li r3, 1
lbl_800EA4B8:
/* 800EA4B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EA4BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EA4C0  7C 08 03 A6 */	mtlr r0
/* 800EA4C4  38 21 00 10 */	addi r1, r1, 0x10
/* 800EA4C8  4E 80 00 20 */	blr 
