lbl_80485838:
/* 80485838  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048583C  7C 08 02 A6 */	mflr r0
/* 80485840  90 01 00 14 */	stw r0, 0x14(r1)
/* 80485844  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80485848  7C 7F 1B 78 */	mr r31, r3
/* 8048584C  80 83 00 B0 */	lwz r4, 0xb0(r3)
/* 80485850  54 80 C6 3E */	rlwinm r0, r4, 0x18, 0x18, 0x1f
/* 80485854  28 00 00 FF */	cmplwi r0, 0xff
/* 80485858  41 82 00 14 */	beq lbl_8048586C
/* 8048585C  28 00 00 00 */	cmplwi r0, 0
/* 80485860  41 82 00 0C */	beq lbl_8048586C
/* 80485864  28 00 00 03 */	cmplwi r0, 3
/* 80485868  40 82 00 2C */	bne lbl_80485894
lbl_8048586C:
/* 8048586C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80485870  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80485874  54 84 46 3E */	srwi r4, r4, 0x18
/* 80485878  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8048587C  7C 05 07 74 */	extsb r5, r0
/* 80485880  4B BA FA E1 */	bl isSwitch__10dSv_info_cCFii
/* 80485884  2C 03 00 00 */	cmpwi r3, 0
/* 80485888  41 82 00 54 */	beq lbl_804858DC
/* 8048588C  38 60 00 00 */	li r3, 0
/* 80485890  48 00 00 D0 */	b lbl_80485960
lbl_80485894:
/* 80485894  28 00 00 01 */	cmplwi r0, 1
/* 80485898  41 82 00 14 */	beq lbl_804858AC
/* 8048589C  28 00 00 02 */	cmplwi r0, 2
/* 804858A0  41 82 00 0C */	beq lbl_804858AC
/* 804858A4  28 00 00 04 */	cmplwi r0, 4
/* 804858A8  40 82 00 34 */	bne lbl_804858DC
lbl_804858AC:
/* 804858AC  54 84 46 3E */	srwi r4, r4, 0x18
/* 804858B0  28 04 00 FF */	cmplwi r4, 0xff
/* 804858B4  41 82 00 28 */	beq lbl_804858DC
/* 804858B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804858BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804858C0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 804858C4  7C 05 07 74 */	extsb r5, r0
/* 804858C8  4B BA FA 99 */	bl isSwitch__10dSv_info_cCFii
/* 804858CC  2C 03 00 00 */	cmpwi r3, 0
/* 804858D0  40 82 00 0C */	bne lbl_804858DC
/* 804858D4  38 60 00 00 */	li r3, 0
/* 804858D8  48 00 00 88 */	b lbl_80485960
lbl_804858DC:
/* 804858DC  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 804858E0  54 00 05 3E */	clrlwi r0, r0, 0x14
/* 804858E4  28 00 0F FF */	cmplwi r0, 0xfff
/* 804858E8  41 82 00 34 */	beq lbl_8048591C
/* 804858EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804858F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804858F4  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804858F8  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 804858FC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80485900  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80485904  7C 84 02 2E */	lhzx r4, r4, r0
/* 80485908  4B BA F0 B5 */	bl isEventBit__11dSv_event_cCFUs
/* 8048590C  2C 03 00 00 */	cmpwi r3, 0
/* 80485910  41 82 00 0C */	beq lbl_8048591C
/* 80485914  38 60 00 00 */	li r3, 0
/* 80485918  48 00 00 48 */	b lbl_80485960
lbl_8048591C:
/* 8048591C  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80485920  54 00 05 3E */	clrlwi r0, r0, 0x14
/* 80485924  28 00 0F FF */	cmplwi r0, 0xfff
/* 80485928  41 82 00 34 */	beq lbl_8048595C
/* 8048592C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80485930  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80485934  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80485938  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 8048593C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80485940  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80485944  7C 84 02 2E */	lhzx r4, r4, r0
/* 80485948  4B BA F0 75 */	bl isEventBit__11dSv_event_cCFUs
/* 8048594C  2C 03 00 00 */	cmpwi r3, 0
/* 80485950  40 82 00 0C */	bne lbl_8048595C
/* 80485954  38 60 00 00 */	li r3, 0
/* 80485958  48 00 00 08 */	b lbl_80485960
lbl_8048595C:
/* 8048595C  38 60 00 01 */	li r3, 1
lbl_80485960:
/* 80485960  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80485964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80485968  7C 08 03 A6 */	mtlr r0
/* 8048596C  38 21 00 10 */	addi r1, r1, 0x10
/* 80485970  4E 80 00 20 */	blr 
