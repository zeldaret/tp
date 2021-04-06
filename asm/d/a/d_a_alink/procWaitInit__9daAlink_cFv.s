lbl_800C33B8:
/* 800C33B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C33BC  7C 08 02 A6 */	mflr r0
/* 800C33C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C33C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C33C8  93 C1 00 08 */	stw r30, 8(r1)
/* 800C33CC  7C 7E 1B 78 */	mr r30, r3
/* 800C33D0  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800C33D4  28 00 01 49 */	cmplwi r0, 0x149
/* 800C33D8  40 82 00 10 */	bne lbl_800C33E8
/* 800C33DC  80 1E 05 88 */	lwz r0, 0x588(r30)
/* 800C33E0  64 00 08 00 */	oris r0, r0, 0x800
/* 800C33E4  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_800C33E8:
/* 800C33E8  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800C33EC  28 00 00 03 */	cmplwi r0, 3
/* 800C33F0  40 82 00 0C */	bne lbl_800C33FC
/* 800C33F4  38 60 00 00 */	li r3, 0
/* 800C33F8  48 00 00 F4 */	b lbl_800C34EC
lbl_800C33FC:
/* 800C33FC  7F C3 F3 78 */	mr r3, r30
/* 800C3400  48 05 28 21 */	bl checkEventRun__9daAlink_cCFv
/* 800C3404  2C 03 00 00 */	cmpwi r3, 0
/* 800C3408  40 82 00 38 */	bne lbl_800C3440
/* 800C340C  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800C3410  28 00 00 01 */	cmplwi r0, 1
/* 800C3414  40 82 00 2C */	bne lbl_800C3440
/* 800C3418  38 7E 1F D0 */	addi r3, r30, 0x1fd0
/* 800C341C  48 09 B0 B1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800C3420  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C3424  40 82 00 1C */	bne lbl_800C3440
/* 800C3428  7F C3 F3 78 */	mr r3, r30
/* 800C342C  4B FF 5E 29 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800C3430  2C 03 00 00 */	cmpwi r3, 0
/* 800C3434  41 82 00 0C */	beq lbl_800C3440
/* 800C3438  38 60 00 00 */	li r3, 0
/* 800C343C  48 00 00 B0 */	b lbl_800C34EC
lbl_800C3440:
/* 800C3440  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800C3444  28 00 00 1E */	cmplwi r0, 0x1e
/* 800C3448  41 82 00 0C */	beq lbl_800C3454
/* 800C344C  28 00 00 25 */	cmplwi r0, 0x25
/* 800C3450  40 82 00 0C */	bne lbl_800C345C
lbl_800C3454:
/* 800C3454  3B E0 00 00 */	li r31, 0
/* 800C3458  48 00 00 08 */	b lbl_800C3460
lbl_800C345C:
/* 800C345C  3B E0 00 01 */	li r31, 1
lbl_800C3460:
/* 800C3460  7F C3 F3 78 */	mr r3, r30
/* 800C3464  38 80 00 03 */	li r4, 3
/* 800C3468  4B FF EB 05 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C346C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C3470  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800C3474  7F C3 F3 78 */	mr r3, r30
/* 800C3478  3C 80 80 39 */	lis r4, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 800C347C  38 84 D6 64 */	addi r4, r4, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 800C3480  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 800C3484  4B FE A9 91 */	bl setBlendMoveAnime__9daAlink_cFf
/* 800C3488  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800C348C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800C3490  2C 1F 00 00 */	cmpwi r31, 0
/* 800C3494  41 82 00 0C */	beq lbl_800C34A0
/* 800C3498  38 00 00 04 */	li r0, 4
/* 800C349C  98 1E 2F 98 */	stb r0, 0x2f98(r30)
lbl_800C34A0:
/* 800C34A0  7F C3 F3 78 */	mr r3, r30
/* 800C34A4  4B FF 03 A1 */	bl initServiceWaitTime__9daAlink_cFv
/* 800C34A8  80 1E 05 88 */	lwz r0, 0x588(r30)
/* 800C34AC  54 00 01 09 */	rlwinm. r0, r0, 0, 4, 4
/* 800C34B0  41 82 00 38 */	beq lbl_800C34E8
/* 800C34B4  7F C3 F3 78 */	mr r3, r30
/* 800C34B8  38 80 00 19 */	li r4, 0x19
/* 800C34BC  4B FE 90 9D */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800C34C0  2C 03 00 00 */	cmpwi r3, 0
/* 800C34C4  40 82 00 18 */	bne lbl_800C34DC
/* 800C34C8  7F C3 F3 78 */	mr r3, r30
/* 800C34CC  38 80 00 B6 */	li r4, 0xb6
/* 800C34D0  4B FE 90 89 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800C34D4  2C 03 00 00 */	cmpwi r3, 0
/* 800C34D8  41 82 00 10 */	beq lbl_800C34E8
lbl_800C34DC:
/* 800C34DC  7F C3 F3 78 */	mr r3, r30
/* 800C34E0  38 80 00 1B */	li r4, 0x1b
/* 800C34E4  4B FE 9A 9D */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
lbl_800C34E8:
/* 800C34E8  38 60 00 01 */	li r3, 1
lbl_800C34EC:
/* 800C34EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C34F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800C34F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C34F8  7C 08 03 A6 */	mtlr r0
/* 800C34FC  38 21 00 10 */	addi r1, r1, 0x10
/* 800C3500  4E 80 00 20 */	blr 
