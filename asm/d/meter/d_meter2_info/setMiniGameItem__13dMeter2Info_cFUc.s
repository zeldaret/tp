lbl_8021DE18:
/* 8021DE18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021DE1C  7C 08 02 A6 */	mflr r0
/* 8021DE20  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021DE24  39 61 00 20 */	addi r11, r1, 0x20
/* 8021DE28  48 14 43 A9 */	bl _savegpr_26
/* 8021DE2C  7C 7C 1B 78 */	mr r28, r3
/* 8021DE30  7C 9A 23 78 */	mr r26, r4
/* 8021DE34  3B A0 00 00 */	li r29, 0
/* 8021DE38  88 03 00 DD */	lbz r0, 0xdd(r3)
/* 8021DE3C  28 00 00 00 */	cmplwi r0, 0
/* 8021DE40  41 82 00 08 */	beq lbl_8021DE48
/* 8021DE44  3B A0 00 01 */	li r29, 1
lbl_8021DE48:
/* 8021DE48  88 1C 00 DC */	lbz r0, 0xdc(r28)
/* 8021DE4C  28 00 00 FF */	cmplwi r0, 0xff
/* 8021DE50  40 82 00 64 */	bne lbl_8021DEB4
/* 8021DE54  3B C0 00 00 */	li r30, 0
/* 8021DE58  3B E0 00 00 */	li r31, 0
/* 8021DE5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021DE60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021DE64  3B 63 00 9C */	addi r27, r3, 0x9c
lbl_8021DE68:
/* 8021DE68  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8021DE6C  40 82 00 2C */	bne lbl_8021DE98
/* 8021DE70  7F 63 DB 78 */	mr r3, r27
/* 8021DE74  38 1F 00 0F */	addi r0, r31, 0xf
/* 8021DE78  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8021DE7C  38 A0 00 01 */	li r5, 1
/* 8021DE80  4B E1 51 B1 */	bl getItem__17dSv_player_item_cCFib
/* 8021DE84  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8021DE88  28 00 00 FF */	cmplwi r0, 0xff
/* 8021DE8C  40 82 00 0C */	bne lbl_8021DE98
/* 8021DE90  9B FC 00 DC */	stb r31, 0xdc(r28)
/* 8021DE94  3B C0 00 01 */	li r30, 1
lbl_8021DE98:
/* 8021DE98  3B FF 00 01 */	addi r31, r31, 1
/* 8021DE9C  2C 1F 00 03 */	cmpwi r31, 3
/* 8021DEA0  41 80 FF C8 */	blt lbl_8021DE68
/* 8021DEA4  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8021DEA8  40 82 00 0C */	bne lbl_8021DEB4
/* 8021DEAC  38 00 00 02 */	li r0, 2
/* 8021DEB0  98 1C 00 DC */	stb r0, 0xdc(r28)
lbl_8021DEB4:
/* 8021DEB4  9B 5C 00 DD */	stb r26, 0xdd(r28)
/* 8021DEB8  3B E0 00 00 */	li r31, 0
/* 8021DEBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021DEC0  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_8021DEC4:
/* 8021DEC4  7F E3 FB 78 */	mr r3, r31
/* 8021DEC8  4B E0 FF 01 */	bl dComIfGs_getMixItemIndex__Fi
/* 8021DECC  7F DC FA 14 */	add r30, r28, r31
/* 8021DED0  98 7E 00 C8 */	stb r3, 0xc8(r30)
/* 8021DED4  7F 63 DB 78 */	mr r3, r27
/* 8021DED8  7F E4 FB 78 */	mr r4, r31
/* 8021DEDC  4B E1 4B 81 */	bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8021DEE0  98 7E 00 C4 */	stb r3, 0xc4(r30)
/* 8021DEE4  3B FF 00 01 */	addi r31, r31, 1
/* 8021DEE8  2C 1F 00 02 */	cmpwi r31, 2
/* 8021DEEC  41 80 FF D8 */	blt lbl_8021DEC4
/* 8021DEF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021DEF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021DEF8  3B E3 00 EC */	addi r31, r3, 0xec
/* 8021DEFC  7F E3 FB 78 */	mr r3, r31
/* 8021DF00  88 9C 00 DC */	lbz r4, 0xdc(r28)
/* 8021DF04  4B E1 60 79 */	bl getBombNum__24dSv_player_item_record_cCFUc
/* 8021DF08  98 7C 00 CC */	stb r3, 0xcc(r28)
/* 8021DF0C  88 1F 00 00 */	lbz r0, 0(r31)
/* 8021DF10  98 1C 00 CD */	stb r0, 0xcd(r28)
/* 8021DF14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021DF18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021DF1C  3B C3 00 9C */	addi r30, r3, 0x9c
/* 8021DF20  7F C3 F3 78 */	mr r3, r30
/* 8021DF24  38 80 00 04 */	li r4, 4
/* 8021DF28  38 A0 00 00 */	li r5, 0
/* 8021DF2C  4B E1 51 05 */	bl getItem__17dSv_player_item_cCFib
/* 8021DF30  98 7C 00 CE */	stb r3, 0xce(r28)
/* 8021DF34  7F C3 F3 78 */	mr r3, r30
/* 8021DF38  88 9C 00 DC */	lbz r4, 0xdc(r28)
/* 8021DF3C  38 04 00 0F */	addi r0, r4, 0xf
/* 8021DF40  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8021DF44  38 A0 00 00 */	li r5, 0
/* 8021DF48  4B E1 50 E9 */	bl getItem__17dSv_player_item_cCFib
/* 8021DF4C  98 7C 00 CF */	stb r3, 0xcf(r28)
/* 8021DF50  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 8021DF54  41 82 00 98 */	beq lbl_8021DFEC
/* 8021DF58  3B 40 00 00 */	li r26, 0
lbl_8021DF5C:
/* 8021DF5C  7F 43 D3 78 */	mr r3, r26
/* 8021DF60  7F 7C D2 14 */	add r27, r28, r26
/* 8021DF64  88 9B 00 D4 */	lbz r4, 0xd4(r27)
/* 8021DF68  4B E0 FD A1 */	bl dComIfGs_setMixItemIndex__FiUc
/* 8021DF6C  7F 43 D3 78 */	mr r3, r26
/* 8021DF70  88 9B 00 D0 */	lbz r4, 0xd0(r27)
/* 8021DF74  4B E0 FD 51 */	bl dComIfGs_setSelectItemIndex__FiUc
/* 8021DF78  3B 5A 00 01 */	addi r26, r26, 1
/* 8021DF7C  2C 1A 00 02 */	cmpwi r26, 2
/* 8021DF80  41 80 FF DC */	blt lbl_8021DF5C
/* 8021DF84  7F C3 F3 78 */	mr r3, r30
/* 8021DF88  38 80 00 04 */	li r4, 4
/* 8021DF8C  88 BC 00 DA */	lbz r5, 0xda(r28)
/* 8021DF90  4B E1 50 29 */	bl setItem__17dSv_player_item_cFiUc
/* 8021DF94  88 9C 00 DA */	lbz r4, 0xda(r28)
/* 8021DF98  38 00 00 04 */	li r0, 4
/* 8021DF9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021DFA0  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021DFA4  98 1B 5E 7D */	stb r0, 0x5e7d(r27)
/* 8021DFA8  98 9B 5E 7E */	stb r4, 0x5e7e(r27)
/* 8021DFAC  7F C3 F3 78 */	mr r3, r30
/* 8021DFB0  88 9C 00 DC */	lbz r4, 0xdc(r28)
/* 8021DFB4  38 04 00 0F */	addi r0, r4, 0xf
/* 8021DFB8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8021DFBC  88 BC 00 DB */	lbz r5, 0xdb(r28)
/* 8021DFC0  4B E1 4F F9 */	bl setItem__17dSv_player_item_cFiUc
/* 8021DFC4  88 7C 00 DB */	lbz r3, 0xdb(r28)
/* 8021DFC8  88 9C 00 DC */	lbz r4, 0xdc(r28)
/* 8021DFCC  38 04 00 0F */	addi r0, r4, 0xf
/* 8021DFD0  98 1B 5E 7D */	stb r0, 0x5e7d(r27)
/* 8021DFD4  98 7B 5E 7E */	stb r3, 0x5e7e(r27)
/* 8021DFD8  7F E3 FB 78 */	mr r3, r31
/* 8021DFDC  88 BC 00 D8 */	lbz r5, 0xd8(r28)
/* 8021DFE0  4B E1 5F 8D */	bl setBombNum__24dSv_player_item_record_cFUcUc
/* 8021DFE4  88 1C 00 D9 */	lbz r0, 0xd9(r28)
/* 8021DFE8  98 1F 00 00 */	stb r0, 0(r31)
lbl_8021DFEC:
/* 8021DFEC  7F C3 F3 78 */	mr r3, r30
/* 8021DFF0  88 9C 00 DC */	lbz r4, 0xdc(r28)
/* 8021DFF4  38 04 00 0F */	addi r0, r4, 0xf
/* 8021DFF8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8021DFFC  38 A0 00 70 */	li r5, 0x70
/* 8021E000  4B E1 4F B9 */	bl setItem__17dSv_player_item_cFiUc
/* 8021E004  88 7C 00 DC */	lbz r3, 0xdc(r28)
/* 8021E008  38 03 00 0F */	addi r0, r3, 0xf
/* 8021E00C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021E010  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021E014  98 1B 5E 7D */	stb r0, 0x5e7d(r27)
/* 8021E018  38 00 00 70 */	li r0, 0x70
/* 8021E01C  98 1B 5E 7E */	stb r0, 0x5e7e(r27)
/* 8021E020  88 1C 00 DD */	lbz r0, 0xdd(r28)
/* 8021E024  28 00 00 03 */	cmplwi r0, 3
/* 8021E028  41 82 00 5C */	beq lbl_8021E084
/* 8021E02C  7F C3 F3 78 */	mr r3, r30
/* 8021E030  38 80 00 04 */	li r4, 4
/* 8021E034  38 A0 00 43 */	li r5, 0x43
/* 8021E038  4B E1 4F 81 */	bl setItem__17dSv_player_item_cFiUc
/* 8021E03C  38 00 00 04 */	li r0, 4
/* 8021E040  98 1B 5E 7D */	stb r0, 0x5e7d(r27)
/* 8021E044  38 00 00 43 */	li r0, 0x43
/* 8021E048  98 1B 5E 7E */	stb r0, 0x5e7e(r27)
/* 8021E04C  38 60 00 01 */	li r3, 1
/* 8021E050  38 80 00 FF */	li r4, 0xff
/* 8021E054  4B E0 FC B5 */	bl dComIfGs_setMixItemIndex__FiUc
/* 8021E058  38 60 00 01 */	li r3, 1
/* 8021E05C  38 80 00 FF */	li r4, 0xff
/* 8021E060  4B E0 FC 65 */	bl dComIfGs_setSelectItemIndex__FiUc
/* 8021E064  38 60 00 00 */	li r3, 0
/* 8021E068  38 80 00 04 */	li r4, 4
/* 8021E06C  4B E0 FC 9D */	bl dComIfGs_setMixItemIndex__FiUc
/* 8021E070  38 60 00 00 */	li r3, 0
/* 8021E074  88 9C 00 DC */	lbz r4, 0xdc(r28)
/* 8021E078  38 04 00 0F */	addi r0, r4, 0xf
/* 8021E07C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8021E080  4B E0 FC 45 */	bl dComIfGs_setSelectItemIndex__FiUc
lbl_8021E084:
/* 8021E084  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 8021E088  40 82 00 24 */	bne lbl_8021E0AC
/* 8021E08C  7F E3 FB 78 */	mr r3, r31
/* 8021E090  88 9C 00 DC */	lbz r4, 0xdc(r28)
/* 8021E094  38 A0 00 1E */	li r5, 0x1e
/* 8021E098  4B E1 5E D5 */	bl setBombNum__24dSv_player_item_record_cFUcUc
/* 8021E09C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021E0A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021E0A4  88 03 00 F8 */	lbz r0, 0xf8(r3)
/* 8021E0A8  98 1F 00 00 */	stb r0, 0(r31)
lbl_8021E0AC:
/* 8021E0AC  39 61 00 20 */	addi r11, r1, 0x20
/* 8021E0B0  48 14 41 6D */	bl _restgpr_26
/* 8021E0B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021E0B8  7C 08 03 A6 */	mtlr r0
/* 8021E0BC  38 21 00 20 */	addi r1, r1, 0x20
/* 8021E0C0  4E 80 00 20 */	blr 
