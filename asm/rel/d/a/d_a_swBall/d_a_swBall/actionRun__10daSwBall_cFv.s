lbl_80D4E524:
/* 80D4E524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4E528  7C 08 02 A6 */	mflr r0
/* 80D4E52C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4E530  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4E534  93 C1 00 08 */	stw r30, 8(r1)
/* 80D4E538  7C 7F 1B 78 */	mr r31, r3
/* 80D4E53C  4B FF FD 0D */	bl search_ball__10daSwBall_cFv
/* 80D4E540  7F E3 FB 78 */	mr r3, r31
/* 80D4E544  4B FF FC 51 */	bl checkArea__10daSwBall_cFv
/* 80D4E548  7C 7E 1B 78 */	mr r30, r3
/* 80D4E54C  88 1F 05 8A */	lbz r0, 0x58a(r31)
/* 80D4E550  2C 00 00 02 */	cmpwi r0, 2
/* 80D4E554  41 82 01 08 */	beq lbl_80D4E65C
/* 80D4E558  40 80 01 4C */	bge lbl_80D4E6A4
/* 80D4E55C  2C 00 00 00 */	cmpwi r0, 0
/* 80D4E560  41 82 00 10 */	beq lbl_80D4E570
/* 80D4E564  40 80 00 C8 */	bge lbl_80D4E62C
/* 80D4E568  48 00 01 3C */	b lbl_80D4E6A4
/* 80D4E56C  48 00 01 38 */	b lbl_80D4E6A4
lbl_80D4E570:
/* 80D4E570  2C 1E 00 00 */	cmpwi r30, 0
/* 80D4E574  41 82 00 98 */	beq lbl_80D4E60C
/* 80D4E578  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D4E57C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80D4E580  98 1F 05 88 */	stb r0, 0x588(r31)
/* 80D4E584  88 1F 05 88 */	lbz r0, 0x588(r31)
/* 80D4E588  28 00 00 FF */	cmplwi r0, 0xff
/* 80D4E58C  40 82 00 0C */	bne lbl_80D4E598
/* 80D4E590  38 00 00 0F */	li r0, 0xf
/* 80D4E594  98 1F 05 88 */	stb r0, 0x588(r31)
lbl_80D4E598:
/* 80D4E598  80 9F 00 B0 */	lwz r4, 0xb0(r31)
/* 80D4E59C  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80D4E5A0  28 00 00 01 */	cmplwi r0, 1
/* 80D4E5A4  40 82 00 34 */	bne lbl_80D4E5D8
/* 80D4E5A8  88 1F 05 88 */	lbz r0, 0x588(r31)
/* 80D4E5AC  28 00 00 00 */	cmplwi r0, 0
/* 80D4E5B0  40 82 00 54 */	bne lbl_80D4E604
/* 80D4E5B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D4E5B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D4E5BC  54 84 86 3E */	rlwinm r4, r4, 0x10, 0x18, 0x1f
/* 80D4E5C0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D4E5C4  7C 05 07 74 */	extsb r5, r0
/* 80D4E5C8  4B 2E 6C 38 */	b onSwitch__10dSv_info_cFii
/* 80D4E5CC  38 00 00 03 */	li r0, 3
/* 80D4E5D0  98 1F 05 8A */	stb r0, 0x58a(r31)
/* 80D4E5D4  48 00 00 30 */	b lbl_80D4E604
lbl_80D4E5D8:
/* 80D4E5D8  88 1F 05 88 */	lbz r0, 0x588(r31)
/* 80D4E5DC  28 00 00 00 */	cmplwi r0, 0
/* 80D4E5E0  40 82 00 24 */	bne lbl_80D4E604
/* 80D4E5E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D4E5E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D4E5EC  54 84 86 3E */	rlwinm r4, r4, 0x10, 0x18, 0x1f
/* 80D4E5F0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D4E5F4  7C 05 07 74 */	extsb r5, r0
/* 80D4E5F8  4B 2E 6C 08 */	b onSwitch__10dSv_info_cFii
/* 80D4E5FC  38 00 00 02 */	li r0, 2
/* 80D4E600  98 1F 05 8A */	stb r0, 0x58a(r31)
lbl_80D4E604:
/* 80D4E604  38 00 00 01 */	li r0, 1
/* 80D4E608  98 1F 05 8A */	stb r0, 0x58a(r31)
lbl_80D4E60C:
/* 80D4E60C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D4E610  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D4E614  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D4E618  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80D4E61C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D4E620  7C 05 07 74 */	extsb r5, r0
/* 80D4E624  4B 2E 6C 8C */	b offSwitch__10dSv_info_cFii
/* 80D4E628  48 00 00 7C */	b lbl_80D4E6A4
lbl_80D4E62C:
/* 80D4E62C  2C 1E 00 00 */	cmpwi r30, 0
/* 80D4E630  40 82 00 10 */	bne lbl_80D4E640
/* 80D4E634  38 00 00 00 */	li r0, 0
/* 80D4E638  98 1F 05 8A */	stb r0, 0x58a(r31)
/* 80D4E63C  48 00 00 68 */	b lbl_80D4E6A4
lbl_80D4E640:
/* 80D4E640  38 7F 05 88 */	addi r3, r31, 0x588
/* 80D4E644  48 00 03 31 */	bl func_80D4E974
/* 80D4E648  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D4E64C  40 82 00 58 */	bne lbl_80D4E6A4
/* 80D4E650  38 00 00 02 */	li r0, 2
/* 80D4E654  98 1F 05 8A */	stb r0, 0x58a(r31)
/* 80D4E658  48 00 00 4C */	b lbl_80D4E6A4
lbl_80D4E65C:
/* 80D4E65C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D4E660  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D4E664  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D4E668  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80D4E66C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D4E670  7C 05 07 74 */	extsb r5, r0
/* 80D4E674  4B 2E 6B 8C */	b onSwitch__10dSv_info_cFii
/* 80D4E678  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D4E67C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80D4E680  28 00 00 01 */	cmplwi r0, 1
/* 80D4E684  40 82 00 10 */	bne lbl_80D4E694
/* 80D4E688  38 00 00 03 */	li r0, 3
/* 80D4E68C  98 1F 05 8A */	stb r0, 0x58a(r31)
/* 80D4E690  48 00 00 14 */	b lbl_80D4E6A4
lbl_80D4E694:
/* 80D4E694  2C 1E 00 00 */	cmpwi r30, 0
/* 80D4E698  40 82 00 0C */	bne lbl_80D4E6A4
/* 80D4E69C  38 00 00 00 */	li r0, 0
/* 80D4E6A0  98 1F 05 8A */	stb r0, 0x58a(r31)
lbl_80D4E6A4:
/* 80D4E6A4  7F E3 FB 78 */	mr r3, r31
/* 80D4E6A8  48 00 00 21 */	bl PutCrrPos__10daSwBall_cFv
/* 80D4E6AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4E6B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D4E6B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4E6B8  7C 08 03 A6 */	mtlr r0
/* 80D4E6BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4E6C0  4E 80 00 20 */	blr 
