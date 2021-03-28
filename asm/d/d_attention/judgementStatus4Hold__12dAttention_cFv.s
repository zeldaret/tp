lbl_80072344:
/* 80072344  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80072348  7C 08 02 A6 */	mflr r0
/* 8007234C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80072350  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80072354  7C 7F 1B 78 */	mr r31, r3
/* 80072358  88 03 03 29 */	lbz r0, 0x329(r3)
/* 8007235C  2C 00 00 01 */	cmpwi r0, 1
/* 80072360  41 82 00 68 */	beq lbl_800723C8
/* 80072364  40 80 00 10 */	bge lbl_80072374
/* 80072368  2C 00 00 00 */	cmpwi r0, 0
/* 8007236C  40 80 00 14 */	bge lbl_80072380
/* 80072370  48 00 02 34 */	b lbl_800725A4
lbl_80072374:
/* 80072374  2C 00 00 03 */	cmpwi r0, 3
/* 80072378  40 80 02 2C */	bge lbl_800725A4
/* 8007237C  48 00 01 30 */	b lbl_800724AC
lbl_80072380:
/* 80072380  38 00 00 00 */	li r0, 0
/* 80072384  98 1F 03 2F */	stb r0, 0x32f(r31)
/* 80072388  98 1F 03 2E */	stb r0, 0x32e(r31)
/* 8007238C  38 00 FF FF */	li r0, -1
/* 80072390  90 1F 00 04 */	stw r0, 4(r31)
/* 80072394  4B FF F5 11 */	bl stockAttention__12dAttention_cFv
/* 80072398  88 1F 03 2B */	lbz r0, 0x32b(r31)
/* 8007239C  28 00 00 00 */	cmplwi r0, 0
/* 800723A0  40 82 02 04 */	bne lbl_800725A4
/* 800723A4  7F E3 FB 78 */	mr r3, r31
/* 800723A8  4B FF FE F9 */	bl triggerProc__12dAttention_cFv
/* 800723AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800723B0  41 82 01 F4 */	beq lbl_800725A4
/* 800723B4  38 00 00 01 */	li r0, 1
/* 800723B8  98 1F 03 29 */	stb r0, 0x329(r31)
/* 800723BC  38 00 00 0F */	li r0, 0xf
/* 800723C0  98 1F 03 2E */	stb r0, 0x32e(r31)
/* 800723C4  48 00 01 E0 */	b lbl_800725A4
lbl_800723C8:
/* 800723C8  38 80 00 00 */	li r4, 0
/* 800723CC  48 00 13 01 */	bl LockonTargetPId__12dAttention_cFl
/* 800723D0  90 7F 00 04 */	stw r3, 4(r31)
/* 800723D4  38 00 00 00 */	li r0, 0
/* 800723D8  98 1F 03 2F */	stb r0, 0x32f(r31)
/* 800723DC  7F E3 FB 78 */	mr r3, r31
/* 800723E0  4B FF FF 0D */	bl lostCheck__12dAttention_cFv
/* 800723E4  2C 03 00 00 */	cmpwi r3, 0
/* 800723E8  41 82 00 50 */	beq lbl_80072438
/* 800723EC  38 00 FF FF */	li r0, -1
/* 800723F0  90 1F 00 04 */	stw r0, 4(r31)
/* 800723F4  7F E3 FB 78 */	mr r3, r31
/* 800723F8  4B FF F4 AD */	bl stockAttention__12dAttention_cFv
/* 800723FC  7F E3 FB 78 */	mr r3, r31
/* 80072400  4B FF FE A1 */	bl triggerProc__12dAttention_cFv
/* 80072404  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80072408  41 82 00 10 */	beq lbl_80072418
/* 8007240C  38 00 00 01 */	li r0, 1
/* 80072410  98 1F 03 29 */	stb r0, 0x329(r31)
/* 80072414  48 00 00 80 */	b lbl_80072494
lbl_80072418:
/* 80072418  38 00 00 00 */	li r0, 0
/* 8007241C  98 1F 03 29 */	stb r0, 0x329(r31)
/* 80072420  7F E3 FB 78 */	mr r3, r31
/* 80072424  4B FF F6 45 */	bl freeAttention__12dAttention_cFv
/* 80072428  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 8007242C  64 00 00 80 */	oris r0, r0, 0x80
/* 80072430  90 1F 03 34 */	stw r0, 0x334(r31)
/* 80072434  48 00 00 60 */	b lbl_80072494
lbl_80072438:
/* 80072438  88 1F 03 2B */	lbz r0, 0x32b(r31)
/* 8007243C  28 00 00 04 */	cmplwi r0, 4
/* 80072440  40 82 00 24 */	bne lbl_80072464
/* 80072444  38 00 00 02 */	li r0, 2
/* 80072448  98 1F 03 29 */	stb r0, 0x329(r31)
/* 8007244C  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80072450  60 00 00 10 */	ori r0, r0, 0x10
/* 80072454  90 1F 03 34 */	stw r0, 0x334(r31)
/* 80072458  38 00 00 0A */	li r0, 0xa
/* 8007245C  98 1F 03 2F */	stb r0, 0x32f(r31)
/* 80072460  48 00 00 34 */	b lbl_80072494
lbl_80072464:
/* 80072464  88 1F 03 2E */	lbz r0, 0x32e(r31)
/* 80072468  28 00 00 00 */	cmplwi r0, 0
/* 8007246C  40 82 00 28 */	bne lbl_80072494
/* 80072470  7F E3 FB 78 */	mr r3, r31
/* 80072474  38 80 FF FF */	li r4, -1
/* 80072478  4B FF ED C9 */	bl initList__12dAttention_cFUl
/* 8007247C  7F E3 FB 78 */	mr r3, r31
/* 80072480  4B FF EF 4D */	bl makeList__12dAttention_cFv
/* 80072484  2C 03 00 00 */	cmpwi r3, 0
/* 80072488  41 82 00 0C */	beq lbl_80072494
/* 8007248C  7F E3 FB 78 */	mr r3, r31
/* 80072490  4B FF F2 29 */	bl sortList__12dAttention_cFv
lbl_80072494:
/* 80072494  88 7F 03 2E */	lbz r3, 0x32e(r31)
/* 80072498  28 03 00 00 */	cmplwi r3, 0
/* 8007249C  41 82 01 08 */	beq lbl_800725A4
/* 800724A0  38 03 FF FF */	addi r0, r3, -1
/* 800724A4  98 1F 03 2E */	stb r0, 0x32e(r31)
/* 800724A8  48 00 00 FC */	b lbl_800725A4
lbl_800724AC:
/* 800724AC  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 800724B0  60 00 00 40 */	ori r0, r0, 0x40
/* 800724B4  90 1F 03 34 */	stw r0, 0x334(r31)
/* 800724B8  4B FF FE 35 */	bl lostCheck__12dAttention_cFv
/* 800724BC  2C 03 00 00 */	cmpwi r3, 0
/* 800724C0  41 82 00 50 */	beq lbl_80072510
/* 800724C4  38 00 FF FF */	li r0, -1
/* 800724C8  90 1F 00 04 */	stw r0, 4(r31)
/* 800724CC  7F E3 FB 78 */	mr r3, r31
/* 800724D0  4B FF F3 D5 */	bl stockAttention__12dAttention_cFv
/* 800724D4  7F E3 FB 78 */	mr r3, r31
/* 800724D8  4B FF FD C9 */	bl triggerProc__12dAttention_cFv
/* 800724DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800724E0  41 82 00 10 */	beq lbl_800724F0
/* 800724E4  38 00 00 01 */	li r0, 1
/* 800724E8  98 1F 03 29 */	stb r0, 0x329(r31)
/* 800724EC  48 00 00 A4 */	b lbl_80072590
lbl_800724F0:
/* 800724F0  38 00 00 00 */	li r0, 0
/* 800724F4  98 1F 03 29 */	stb r0, 0x329(r31)
/* 800724F8  7F E3 FB 78 */	mr r3, r31
/* 800724FC  4B FF F5 6D */	bl freeAttention__12dAttention_cFv
/* 80072500  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80072504  64 00 00 80 */	oris r0, r0, 0x80
/* 80072508  90 1F 03 34 */	stw r0, 0x334(r31)
/* 8007250C  48 00 00 84 */	b lbl_80072590
lbl_80072510:
/* 80072510  88 1F 03 2B */	lbz r0, 0x32b(r31)
/* 80072514  28 00 00 00 */	cmplwi r0, 0
/* 80072518  40 82 00 48 */	bne lbl_80072560
/* 8007251C  7F E3 FB 78 */	mr r3, r31
/* 80072520  4B FF F4 41 */	bl nextAttention__12dAttention_cFv
/* 80072524  28 03 00 00 */	cmplwi r3, 0
/* 80072528  41 82 00 24 */	beq lbl_8007254C
/* 8007252C  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 80072530  60 00 00 08 */	ori r0, r0, 8
/* 80072534  90 1F 03 34 */	stw r0, 0x334(r31)
/* 80072538  38 00 00 01 */	li r0, 1
/* 8007253C  98 1F 03 29 */	stb r0, 0x329(r31)
/* 80072540  38 00 00 0F */	li r0, 0xf
/* 80072544  98 1F 03 2E */	stb r0, 0x32e(r31)
/* 80072548  48 00 00 48 */	b lbl_80072590
lbl_8007254C:
/* 8007254C  38 00 00 00 */	li r0, 0
/* 80072550  98 1F 03 29 */	stb r0, 0x329(r31)
/* 80072554  7F E3 FB 78 */	mr r3, r31
/* 80072558  4B FF F5 11 */	bl freeAttention__12dAttention_cFv
/* 8007255C  48 00 00 34 */	b lbl_80072590
lbl_80072560:
/* 80072560  7F E3 FB 78 */	mr r3, r31
/* 80072564  38 80 00 00 */	li r4, 0
/* 80072568  48 00 0F D5 */	bl LockonTarget__12dAttention_cFl
/* 8007256C  28 03 00 00 */	cmplwi r3, 0
/* 80072570  41 82 00 10 */	beq lbl_80072580
/* 80072574  88 1F 03 2F */	lbz r0, 0x32f(r31)
/* 80072578  28 00 00 00 */	cmplwi r0, 0
/* 8007257C  40 82 00 14 */	bne lbl_80072590
lbl_80072580:
/* 80072580  38 00 00 00 */	li r0, 0
/* 80072584  98 1F 03 29 */	stb r0, 0x329(r31)
/* 80072588  7F E3 FB 78 */	mr r3, r31
/* 8007258C  4B FF F4 DD */	bl freeAttention__12dAttention_cFv
lbl_80072590:
/* 80072590  88 7F 03 2F */	lbz r3, 0x32f(r31)
/* 80072594  28 03 00 00 */	cmplwi r3, 0
/* 80072598  41 82 00 0C */	beq lbl_800725A4
/* 8007259C  38 03 FF FF */	addi r0, r3, -1
/* 800725A0  98 1F 03 2F */	stb r0, 0x32f(r31)
lbl_800725A4:
/* 800725A4  80 7F 03 34 */	lwz r3, 0x334(r31)
/* 800725A8  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 800725AC  40 82 00 30 */	bne lbl_800725DC
/* 800725B0  60 60 40 00 */	ori r0, r3, 0x4000
/* 800725B4  90 1F 03 34 */	stw r0, 0x334(r31)
/* 800725B8  7F E3 FB 78 */	mr r3, r31
/* 800725BC  38 80 FF FF */	li r4, -1
/* 800725C0  4B FF EC 81 */	bl initList__12dAttention_cFUl
/* 800725C4  7F E3 FB 78 */	mr r3, r31
/* 800725C8  4B FF EE 05 */	bl makeList__12dAttention_cFv
/* 800725CC  2C 03 00 00 */	cmpwi r3, 0
/* 800725D0  41 82 00 0C */	beq lbl_800725DC
/* 800725D4  7F E3 FB 78 */	mr r3, r31
/* 800725D8  4B FF F0 E1 */	bl sortList__12dAttention_cFv
lbl_800725DC:
/* 800725DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800725E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800725E4  7C 08 03 A6 */	mtlr r0
/* 800725E8  38 21 00 10 */	addi r1, r1, 0x10
/* 800725EC  4E 80 00 20 */	blr 
