lbl_800C0678:
/* 800C0678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C067C  7C 08 02 A6 */	mflr r0
/* 800C0680  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C0684  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C0688  93 C1 00 08 */	stw r30, 8(r1)
/* 800C068C  7C 7E 1B 78 */	mr r30, r3
/* 800C0690  4B FF FF 05 */	bl checkNotBattleStage__9daAlink_cFv
/* 800C0694  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C0698  41 82 00 C8 */	beq lbl_800C0760
/* 800C069C  57 DF 04 3E */	clrlwi r31, r30, 0x10
/* 800C06A0  28 1F 00 48 */	cmplwi r31, 0x48
/* 800C06A4  41 82 00 AC */	beq lbl_800C0750
/* 800C06A8  7F E3 FB 78 */	mr r3, r31
/* 800C06AC  48 09 E5 2D */	bl checkTradeItem__9daPy_py_cFi
/* 800C06B0  2C 03 00 00 */	cmpwi r3, 0
/* 800C06B4  40 82 00 9C */	bne lbl_800C0750
/* 800C06B8  7F E0 FB 78 */	mr r0, r31
/* 800C06BC  28 00 00 27 */	cmplwi r0, 0x27
/* 800C06C0  40 82 00 10 */	bne lbl_800C06D0
/* 800C06C4  48 05 E7 7D */	bl checkLv7DungeonShop__9daAlink_cFv
/* 800C06C8  2C 03 00 00 */	cmpwi r3, 0
/* 800C06CC  40 82 00 84 */	bne lbl_800C0750
lbl_800C06D0:
/* 800C06D0  4B FF FD E5 */	bl checkRoomSpecial__9daAlink_cFv
/* 800C06D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C06D8  41 82 00 20 */	beq lbl_800C06F8
/* 800C06DC  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 800C06E0  28 00 00 60 */	cmplwi r0, 0x60
/* 800C06E4  41 82 00 6C */	beq lbl_800C0750
/* 800C06E8  7F E3 FB 78 */	mr r3, r31
/* 800C06EC  48 09 E5 3D */	bl checkDungeonWarpItem__9daPy_py_cFi
/* 800C06F0  2C 03 00 00 */	cmpwi r3, 0
/* 800C06F4  40 82 00 5C */	bne lbl_800C0750
lbl_800C06F8:
/* 800C06F8  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 800C06FC  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 800C0700  38 63 05 35 */	addi r3, r3, 0x535
/* 800C0704  4B FD D3 5D */	bl checkStageName__9daAlink_cFPCc
/* 800C0708  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C070C  41 82 00 10 */	beq lbl_800C071C
/* 800C0710  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 800C0714  28 00 00 46 */	cmplwi r0, 0x46
/* 800C0718  41 82 00 38 */	beq lbl_800C0750
lbl_800C071C:
/* 800C071C  4B FF FD 31 */	bl checkLv2DungeonRoomSpecial__9daAlink_cFv
/* 800C0720  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C0724  41 82 00 10 */	beq lbl_800C0734
/* 800C0728  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 800C072C  28 00 00 45 */	cmplwi r0, 0x45
/* 800C0730  41 82 00 20 */	beq lbl_800C0750
lbl_800C0734:
/* 800C0734  7F E3 FB 78 */	mr r3, r31
/* 800C0738  48 09 E3 51 */	bl checkBottleItem__9daPy_py_cFi
/* 800C073C  2C 03 00 00 */	cmpwi r3, 0
/* 800C0740  41 82 00 18 */	beq lbl_800C0758
/* 800C0744  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 800C0748  28 00 00 60 */	cmplwi r0, 0x60
/* 800C074C  41 82 00 0C */	beq lbl_800C0758
lbl_800C0750:
/* 800C0750  38 60 00 01 */	li r3, 1
/* 800C0754  48 00 00 10 */	b lbl_800C0764
lbl_800C0758:
/* 800C0758  38 60 00 00 */	li r3, 0
/* 800C075C  48 00 00 08 */	b lbl_800C0764
lbl_800C0760:
/* 800C0760  38 60 00 01 */	li r3, 1
lbl_800C0764:
/* 800C0764  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C0768  83 C1 00 08 */	lwz r30, 8(r1)
/* 800C076C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C0770  7C 08 03 A6 */	mtlr r0
/* 800C0774  38 21 00 10 */	addi r1, r1, 0x10
/* 800C0778  4E 80 00 20 */	blr 
