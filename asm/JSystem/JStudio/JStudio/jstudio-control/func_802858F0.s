lbl_802858F0:
/* 802858F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802858F4  7C 08 02 A6 */	mflr r0
/* 802858F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802858FC  39 61 00 30 */	addi r11, r1, 0x30
/* 80285900  48 0D C8 D9 */	bl _savegpr_28
/* 80285904  7C BC 2B 78 */	mr r28, r5
/* 80285908  83 E3 00 04 */	lwz r31, 4(r3)
/* 8028590C  80 64 00 00 */	lwz r3, 0(r4)
/* 80285910  3B C3 00 08 */	addi r30, r3, 8
/* 80285914  54 BD 07 3E */	clrlwi r29, r5, 0x1c
/* 80285918  54 A0 06 F7 */	rlwinm. r0, r5, 0, 0x1b, 0x1b
/* 8028591C  41 82 00 08 */	beq lbl_80285924
/* 80285920  63 BD 00 10 */	ori r29, r29, 0x10
lbl_80285924:
/* 80285924  57 80 06 B5 */	rlwinm. r0, r28, 0, 0x1a, 0x1a
/* 80285928  41 82 00 08 */	beq lbl_80285930
/* 8028592C  63 BD 00 20 */	ori r29, r29, 0x20
lbl_80285930:
/* 80285930  57 80 06 73 */	rlwinm. r0, r28, 0, 0x19, 0x19
/* 80285934  41 82 00 08 */	beq lbl_8028593C
/* 80285938  63 BD 00 40 */	ori r29, r29, 0x40
lbl_8028593C:
/* 8028593C  38 61 00 0C */	addi r3, r1, 0xc
/* 80285940  38 9F 00 74 */	addi r4, r31, 0x74
/* 80285944  4B FF BA 19 */	bl __ct__Q37JStudio3ctb6TParseFPQ37JStudio3ctb8TControl
/* 80285948  93 C1 00 08 */	stw r30, 8(r1)
/* 8028594C  38 61 00 0C */	addi r3, r1, 0xc
/* 80285950  38 81 00 08 */	addi r4, r1, 8
/* 80285954  7F A5 EB 78 */	mr r5, r29
/* 80285958  48 05 6F B9 */	bl parse_next__Q37JGadget6binary19TParse_header_blockFPPCvUl
/* 8028595C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80285960  40 82 00 18 */	bne lbl_80285978
/* 80285964  38 61 00 0C */	addi r3, r1, 0xc
/* 80285968  38 80 FF FF */	li r4, -1
/* 8028596C  4B FF BA 11 */	bl __dt__Q37JStudio3ctb6TParseFv
/* 80285970  38 60 00 00 */	li r3, 0
/* 80285974  48 00 00 50 */	b lbl_802859C4
lbl_80285978:
/* 80285978  57 80 05 AD */	rlwinm. r0, r28, 0, 0x16, 0x16
/* 8028597C  40 82 00 38 */	bne lbl_802859B4
/* 80285980  7F E3 FB 78 */	mr r3, r31
/* 80285984  38 80 00 00 */	li r4, 0
/* 80285988  4B FF FA B5 */	bl transform_setOrigin_ctb_index__Q27JStudio8TControlFUl
/* 8028598C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80285990  40 82 00 18 */	bne lbl_802859A8
/* 80285994  38 61 00 0C */	addi r3, r1, 0xc
/* 80285998  38 80 FF FF */	li r4, -1
/* 8028599C  4B FF B9 E1 */	bl __dt__Q37JStudio3ctb6TParseFv
/* 802859A0  38 60 00 00 */	li r3, 0
/* 802859A4  48 00 00 20 */	b lbl_802859C4
lbl_802859A8:
/* 802859A8  38 00 00 01 */	li r0, 1
/* 802859AC  98 1F 00 88 */	stb r0, 0x88(r31)
/* 802859B0  98 1F 00 89 */	stb r0, 0x89(r31)
lbl_802859B4:
/* 802859B4  38 61 00 0C */	addi r3, r1, 0xc
/* 802859B8  38 80 FF FF */	li r4, -1
/* 802859BC  4B FF B9 C1 */	bl __dt__Q37JStudio3ctb6TParseFv
/* 802859C0  38 60 00 01 */	li r3, 1
lbl_802859C4:
/* 802859C4  39 61 00 30 */	addi r11, r1, 0x30
/* 802859C8  48 0D C8 5D */	bl _restgpr_28
/* 802859CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802859D0  7C 08 03 A6 */	mtlr r0
/* 802859D4  38 21 00 30 */	addi r1, r1, 0x30
/* 802859D8  4E 80 00 20 */	blr 
