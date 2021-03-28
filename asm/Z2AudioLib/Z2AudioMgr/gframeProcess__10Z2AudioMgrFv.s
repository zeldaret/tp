lbl_802CD904:
/* 802CD904  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CD908  7C 08 02 A6 */	mflr r0
/* 802CD90C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CD910  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CD914  7C 7F 1B 78 */	mr r31, r3
/* 802CD918  4B FF FF 9D */	bl zeldaGFrameWork__10Z2AudioMgrFv
/* 802CD91C  88 1F 05 18 */	lbz r0, 0x518(r31)
/* 802CD920  28 00 00 00 */	cmplwi r0, 0
/* 802CD924  41 82 00 2C */	beq lbl_802CD950
/* 802CD928  38 7F 05 1C */	addi r3, r31, 0x51c
/* 802CD92C  4B FC F8 CD */	bl checkDone__15JASAudioReseterCFv
/* 802CD930  2C 03 00 00 */	cmpwi r3, 0
/* 802CD934  41 82 00 1C */	beq lbl_802CD950
/* 802CD938  88 1F 05 19 */	lbz r0, 0x519(r31)
/* 802CD93C  28 00 00 00 */	cmplwi r0, 0
/* 802CD940  40 82 00 20 */	bne lbl_802CD960
/* 802CD944  38 7F 05 30 */	addi r3, r31, 0x530
/* 802CD948  4B FD CF 05 */	bl stopSync__10Z2SoundMgrFv
/* 802CD94C  48 00 00 14 */	b lbl_802CD960
lbl_802CD950:
/* 802CD950  38 7F 05 30 */	addi r3, r31, 0x530
/* 802CD954  4B FD CD 29 */	bl framework__10Z2SoundMgrFv
/* 802CD958  38 7F 04 A4 */	addi r3, r31, 0x4a4
/* 802CD95C  4B FE C2 F5 */	bl framework__10Z2SceneMgrFv
lbl_802CD960:
/* 802CD960  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CD964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CD968  7C 08 03 A6 */	mtlr r0
/* 802CD96C  38 21 00 10 */	addi r1, r1, 0x10
/* 802CD970  4E 80 00 20 */	blr 
