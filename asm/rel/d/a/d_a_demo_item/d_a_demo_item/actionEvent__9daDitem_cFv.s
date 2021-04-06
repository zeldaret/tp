lbl_804E00DC:
/* 804E00DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E00E0  7C 08 02 A6 */	mflr r0
/* 804E00E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E00E8  39 61 00 20 */	addi r11, r1, 0x20
/* 804E00EC  4B E8 20 F1 */	bl _savegpr_29
/* 804E00F0  7C 7D 1B 78 */	mr r29, r3
/* 804E00F4  88 03 09 3F */	lbz r0, 0x93f(r3)
/* 804E00F8  28 00 00 00 */	cmplwi r0, 0
/* 804E00FC  41 82 00 20 */	beq lbl_804E011C
/* 804E0100  38 7D 09 5C */	addi r3, r29, 0x95c
/* 804E0104  C0 3D 09 40 */	lfs f1, 0x940(r29)
/* 804E0108  3C 80 80 4E */	lis r4, lit_4145@ha /* 0x804E19EC@ha */
/* 804E010C  C0 44 19 EC */	lfs f2, lit_4145@l(r4)  /* 0x804E19EC@l */
/* 804E0110  3C 80 80 4E */	lis r4, lit_3812@ha /* 0x804E19D8@ha */
/* 804E0114  C0 64 19 D8 */	lfs f3, lit_3812@l(r4)  /* 0x804E19D8@l */
/* 804E0118  4B D8 F9 25 */	bl cLib_addCalc2__FPffff
lbl_804E011C:
/* 804E011C  88 1D 09 2A */	lbz r0, 0x92a(r29)
/* 804E0120  28 00 00 E0 */	cmplwi r0, 0xe0
/* 804E0124  40 82 00 30 */	bne lbl_804E0154
/* 804E0128  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070524@ha */
/* 804E012C  38 03 05 24 */	addi r0, r3, 0x0524 /* 0x00070524@l */
/* 804E0130  90 01 00 08 */	stw r0, 8(r1)
/* 804E0134  38 7D 09 A8 */	addi r3, r29, 0x9a8
/* 804E0138  38 81 00 08 */	addi r4, r1, 8
/* 804E013C  38 A0 00 00 */	li r5, 0
/* 804E0140  38 C0 FF FF */	li r6, -1
/* 804E0144  81 9D 09 B8 */	lwz r12, 0x9b8(r29)
/* 804E0148  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804E014C  7D 89 03 A6 */	mtctr r12
/* 804E0150  4E 80 04 21 */	bctrl 
lbl_804E0154:
/* 804E0154  7F A3 EB 78 */	mr r3, r29
/* 804E0158  4B B5 79 9D */	bl chkDead__12daItemBase_cFv
/* 804E015C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804E0160  41 82 08 D8 */	beq lbl_804E0A38
/* 804E0164  88 1D 09 3D */	lbz r0, 0x93d(r29)
/* 804E0168  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804E016C  40 82 00 0C */	bne lbl_804E0178
/* 804E0170  88 7D 09 2A */	lbz r3, 0x92a(r29)
/* 804E0174  4B BB 7D 19 */	bl execItemGet__FUc
lbl_804E0178:
/* 804E0178  88 1D 09 2A */	lbz r0, 0x92a(r29)
/* 804E017C  28 00 00 21 */	cmplwi r0, 0x21
/* 804E0180  40 82 08 A0 */	bne lbl_804E0A20
/* 804E0184  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 804E0188  8B E3 0D 64 */	lbz r31, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 804E018C  7F FF 07 74 */	extsb r31, r31
/* 804E0190  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E0194  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E0198  3B C3 4E 00 */	addi r30, r3, 0x4e00
/* 804E019C  7F C3 F3 78 */	mr r3, r30
/* 804E01A0  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E01A4  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E01A8  4B E8 87 ED */	bl strcmp
/* 804E01AC  2C 03 00 00 */	cmpwi r3, 0
/* 804E01B0  40 82 00 20 */	bne lbl_804E01D0
/* 804E01B4  2C 1F 00 02 */	cmpwi r31, 2
/* 804E01B8  40 82 00 18 */	bne lbl_804E01D0
/* 804E01BC  7F A3 EB 78 */	mr r3, r29
/* 804E01C0  38 80 00 00 */	li r4, 0
/* 804E01C4  38 A0 00 00 */	li r5, 0
/* 804E01C8  48 00 0B 7D */	bl onEventReg__9daDitem_cFii
/* 804E01CC  48 00 08 54 */	b lbl_804E0A20
lbl_804E01D0:
/* 804E01D0  7F C3 F3 78 */	mr r3, r30
/* 804E01D4  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E01D8  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E01DC  38 84 00 08 */	addi r4, r4, 8
/* 804E01E0  4B E8 87 B5 */	bl strcmp
/* 804E01E4  2C 03 00 00 */	cmpwi r3, 0
/* 804E01E8  40 82 00 20 */	bne lbl_804E0208
/* 804E01EC  2C 1F 00 01 */	cmpwi r31, 1
/* 804E01F0  40 82 00 18 */	bne lbl_804E0208
/* 804E01F4  7F A3 EB 78 */	mr r3, r29
/* 804E01F8  38 80 00 00 */	li r4, 0
/* 804E01FC  38 A0 00 01 */	li r5, 1
/* 804E0200  48 00 0B 45 */	bl onEventReg__9daDitem_cFii
/* 804E0204  48 00 08 1C */	b lbl_804E0A20
lbl_804E0208:
/* 804E0208  7F C3 F3 78 */	mr r3, r30
/* 804E020C  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E0210  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E0214  38 84 00 10 */	addi r4, r4, 0x10
/* 804E0218  4B E8 87 7D */	bl strcmp
/* 804E021C  2C 03 00 00 */	cmpwi r3, 0
/* 804E0220  40 82 00 20 */	bne lbl_804E0240
/* 804E0224  2C 1F 00 06 */	cmpwi r31, 6
/* 804E0228  40 82 00 18 */	bne lbl_804E0240
/* 804E022C  7F A3 EB 78 */	mr r3, r29
/* 804E0230  38 80 00 00 */	li r4, 0
/* 804E0234  38 A0 00 02 */	li r5, 2
/* 804E0238  48 00 0B 0D */	bl onEventReg__9daDitem_cFii
/* 804E023C  48 00 07 E4 */	b lbl_804E0A20
lbl_804E0240:
/* 804E0240  7F C3 F3 78 */	mr r3, r30
/* 804E0244  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E0248  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E024C  38 84 00 18 */	addi r4, r4, 0x18
/* 804E0250  4B E8 87 45 */	bl strcmp
/* 804E0254  2C 03 00 00 */	cmpwi r3, 0
/* 804E0258  40 82 00 30 */	bne lbl_804E0288
/* 804E025C  2C 1F 00 01 */	cmpwi r31, 1
/* 804E0260  40 82 00 28 */	bne lbl_804E0288
/* 804E0264  38 60 00 00 */	li r3, 0
/* 804E0268  4B B4 C7 15 */	bl getLayerNo__14dComIfG_play_cFi
/* 804E026C  2C 03 00 02 */	cmpwi r3, 2
/* 804E0270  40 82 00 18 */	bne lbl_804E0288
/* 804E0274  7F A3 EB 78 */	mr r3, r29
/* 804E0278  38 80 00 00 */	li r4, 0
/* 804E027C  38 A0 00 03 */	li r5, 3
/* 804E0280  48 00 0A C5 */	bl onEventReg__9daDitem_cFii
/* 804E0284  48 00 07 9C */	b lbl_804E0A20
lbl_804E0288:
/* 804E0288  7F C3 F3 78 */	mr r3, r30
/* 804E028C  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E0290  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E0294  38 84 00 1F */	addi r4, r4, 0x1f
/* 804E0298  4B E8 86 FD */	bl strcmp
/* 804E029C  2C 03 00 00 */	cmpwi r3, 0
/* 804E02A0  40 82 00 20 */	bne lbl_804E02C0
/* 804E02A4  2C 1F 00 00 */	cmpwi r31, 0
/* 804E02A8  40 82 00 18 */	bne lbl_804E02C0
/* 804E02AC  7F A3 EB 78 */	mr r3, r29
/* 804E02B0  38 80 00 00 */	li r4, 0
/* 804E02B4  38 A0 00 04 */	li r5, 4
/* 804E02B8  48 00 0A 8D */	bl onEventReg__9daDitem_cFii
/* 804E02BC  48 00 07 64 */	b lbl_804E0A20
lbl_804E02C0:
/* 804E02C0  7F C3 F3 78 */	mr r3, r30
/* 804E02C4  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E02C8  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E02CC  38 84 00 27 */	addi r4, r4, 0x27
/* 804E02D0  4B E8 86 C5 */	bl strcmp
/* 804E02D4  2C 03 00 00 */	cmpwi r3, 0
/* 804E02D8  40 82 00 20 */	bne lbl_804E02F8
/* 804E02DC  2C 1F 00 0E */	cmpwi r31, 0xe
/* 804E02E0  40 82 00 18 */	bne lbl_804E02F8
/* 804E02E4  7F A3 EB 78 */	mr r3, r29
/* 804E02E8  38 80 00 00 */	li r4, 0
/* 804E02EC  38 A0 00 05 */	li r5, 5
/* 804E02F0  48 00 0A 55 */	bl onEventReg__9daDitem_cFii
/* 804E02F4  48 00 07 2C */	b lbl_804E0A20
lbl_804E02F8:
/* 804E02F8  7F C3 F3 78 */	mr r3, r30
/* 804E02FC  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E0300  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E0304  38 84 00 1F */	addi r4, r4, 0x1f
/* 804E0308  4B E8 86 8D */	bl strcmp
/* 804E030C  2C 03 00 00 */	cmpwi r3, 0
/* 804E0310  40 82 00 20 */	bne lbl_804E0330
/* 804E0314  2C 1F 00 01 */	cmpwi r31, 1
/* 804E0318  40 82 00 18 */	bne lbl_804E0330
/* 804E031C  7F A3 EB 78 */	mr r3, r29
/* 804E0320  38 80 00 00 */	li r4, 0
/* 804E0324  38 A0 00 06 */	li r5, 6
/* 804E0328  48 00 0A 1D */	bl onEventReg__9daDitem_cFii
/* 804E032C  48 00 06 F4 */	b lbl_804E0A20
lbl_804E0330:
/* 804E0330  7F C3 F3 78 */	mr r3, r30
/* 804E0334  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E0338  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E033C  38 84 00 10 */	addi r4, r4, 0x10
/* 804E0340  4B E8 86 55 */	bl strcmp
/* 804E0344  2C 03 00 00 */	cmpwi r3, 0
/* 804E0348  40 82 00 20 */	bne lbl_804E0368
/* 804E034C  2C 1F 00 0B */	cmpwi r31, 0xb
/* 804E0350  40 82 00 18 */	bne lbl_804E0368
/* 804E0354  7F A3 EB 78 */	mr r3, r29
/* 804E0358  38 80 00 01 */	li r4, 1
/* 804E035C  38 A0 00 00 */	li r5, 0
/* 804E0360  48 00 09 E5 */	bl onEventReg__9daDitem_cFii
/* 804E0364  48 00 06 BC */	b lbl_804E0A20
lbl_804E0368:
/* 804E0368  7F C3 F3 78 */	mr r3, r30
/* 804E036C  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E0370  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E0374  38 84 00 18 */	addi r4, r4, 0x18
/* 804E0378  4B E8 86 1D */	bl strcmp
/* 804E037C  2C 03 00 00 */	cmpwi r3, 0
/* 804E0380  40 82 00 30 */	bne lbl_804E03B0
/* 804E0384  2C 1F 00 01 */	cmpwi r31, 1
/* 804E0388  40 82 00 28 */	bne lbl_804E03B0
/* 804E038C  38 60 00 00 */	li r3, 0
/* 804E0390  4B B4 C5 ED */	bl getLayerNo__14dComIfG_play_cFi
/* 804E0394  2C 03 00 00 */	cmpwi r3, 0
/* 804E0398  40 82 00 18 */	bne lbl_804E03B0
/* 804E039C  7F A3 EB 78 */	mr r3, r29
/* 804E03A0  38 80 00 01 */	li r4, 1
/* 804E03A4  38 A0 00 01 */	li r5, 1
/* 804E03A8  48 00 09 9D */	bl onEventReg__9daDitem_cFii
/* 804E03AC  48 00 06 74 */	b lbl_804E0A20
lbl_804E03B0:
/* 804E03B0  7F C3 F3 78 */	mr r3, r30
/* 804E03B4  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E03B8  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E03BC  38 84 00 2F */	addi r4, r4, 0x2f
/* 804E03C0  4B E8 85 D5 */	bl strcmp
/* 804E03C4  2C 03 00 00 */	cmpwi r3, 0
/* 804E03C8  40 82 00 20 */	bne lbl_804E03E8
/* 804E03CC  2C 1F 00 00 */	cmpwi r31, 0
/* 804E03D0  40 82 00 18 */	bne lbl_804E03E8
/* 804E03D4  7F A3 EB 78 */	mr r3, r29
/* 804E03D8  38 80 00 01 */	li r4, 1
/* 804E03DC  38 A0 00 02 */	li r5, 2
/* 804E03E0  48 00 09 65 */	bl onEventReg__9daDitem_cFii
/* 804E03E4  48 00 06 3C */	b lbl_804E0A20
lbl_804E03E8:
/* 804E03E8  7F C3 F3 78 */	mr r3, r30
/* 804E03EC  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E03F0  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E03F4  38 84 00 37 */	addi r4, r4, 0x37
/* 804E03F8  4B E8 85 9D */	bl strcmp
/* 804E03FC  2C 03 00 00 */	cmpwi r3, 0
/* 804E0400  40 82 00 3C */	bne lbl_804E043C
/* 804E0404  2C 1F 00 00 */	cmpwi r31, 0
/* 804E0408  40 82 00 34 */	bne lbl_804E043C
/* 804E040C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E0410  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E0414  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 804E0418  38 80 06 04 */	li r4, 0x604
/* 804E041C  4B B5 45 A1 */	bl isEventBit__11dSv_event_cCFUs
/* 804E0420  2C 03 00 00 */	cmpwi r3, 0
/* 804E0424  41 82 05 FC */	beq lbl_804E0A20
/* 804E0428  7F A3 EB 78 */	mr r3, r29
/* 804E042C  38 80 00 01 */	li r4, 1
/* 804E0430  38 A0 00 03 */	li r5, 3
/* 804E0434  48 00 09 11 */	bl onEventReg__9daDitem_cFii
/* 804E0438  48 00 05 E8 */	b lbl_804E0A20
lbl_804E043C:
/* 804E043C  7F C3 F3 78 */	mr r3, r30
/* 804E0440  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E0444  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E0448  38 84 00 3F */	addi r4, r4, 0x3f
/* 804E044C  4B E8 85 49 */	bl strcmp
/* 804E0450  2C 03 00 00 */	cmpwi r3, 0
/* 804E0454  40 82 00 20 */	bne lbl_804E0474
/* 804E0458  2C 1F 00 00 */	cmpwi r31, 0
/* 804E045C  40 82 00 18 */	bne lbl_804E0474
/* 804E0460  7F A3 EB 78 */	mr r3, r29
/* 804E0464  38 80 00 01 */	li r4, 1
/* 804E0468  38 A0 00 05 */	li r5, 5
/* 804E046C  48 00 08 D9 */	bl onEventReg__9daDitem_cFii
/* 804E0470  48 00 05 B0 */	b lbl_804E0A20
lbl_804E0474:
/* 804E0474  7F C3 F3 78 */	mr r3, r30
/* 804E0478  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E047C  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E0480  38 84 00 47 */	addi r4, r4, 0x47
/* 804E0484  4B E8 85 11 */	bl strcmp
/* 804E0488  2C 03 00 00 */	cmpwi r3, 0
/* 804E048C  40 82 00 20 */	bne lbl_804E04AC
/* 804E0490  2C 1F 00 05 */	cmpwi r31, 5
/* 804E0494  40 82 00 18 */	bne lbl_804E04AC
/* 804E0498  7F A3 EB 78 */	mr r3, r29
/* 804E049C  38 80 00 01 */	li r4, 1
/* 804E04A0  38 A0 00 06 */	li r5, 6
/* 804E04A4  48 00 08 A1 */	bl onEventReg__9daDitem_cFii
/* 804E04A8  48 00 05 78 */	b lbl_804E0A20
lbl_804E04AC:
/* 804E04AC  7F C3 F3 78 */	mr r3, r30
/* 804E04B0  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E04B4  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E04B8  38 84 00 47 */	addi r4, r4, 0x47
/* 804E04BC  4B E8 84 D9 */	bl strcmp
/* 804E04C0  2C 03 00 00 */	cmpwi r3, 0
/* 804E04C4  40 82 00 20 */	bne lbl_804E04E4
/* 804E04C8  2C 1F 00 03 */	cmpwi r31, 3
/* 804E04CC  40 82 00 18 */	bne lbl_804E04E4
/* 804E04D0  7F A3 EB 78 */	mr r3, r29
/* 804E04D4  38 80 00 01 */	li r4, 1
/* 804E04D8  38 A0 00 07 */	li r5, 7
/* 804E04DC  48 00 08 69 */	bl onEventReg__9daDitem_cFii
/* 804E04E0  48 00 05 40 */	b lbl_804E0A20
lbl_804E04E4:
/* 804E04E4  7F C3 F3 78 */	mr r3, r30
/* 804E04E8  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E04EC  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E04F0  38 84 00 4E */	addi r4, r4, 0x4e
/* 804E04F4  4B E8 84 A1 */	bl strcmp
/* 804E04F8  2C 03 00 00 */	cmpwi r3, 0
/* 804E04FC  40 82 00 20 */	bne lbl_804E051C
/* 804E0500  2C 1F 00 06 */	cmpwi r31, 6
/* 804E0504  40 82 00 18 */	bne lbl_804E051C
/* 804E0508  7F A3 EB 78 */	mr r3, r29
/* 804E050C  38 80 00 02 */	li r4, 2
/* 804E0510  38 A0 00 00 */	li r5, 0
/* 804E0514  48 00 08 31 */	bl onEventReg__9daDitem_cFii
/* 804E0518  48 00 05 08 */	b lbl_804E0A20
lbl_804E051C:
/* 804E051C  7F C3 F3 78 */	mr r3, r30
/* 804E0520  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E0524  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E0528  38 84 00 4E */	addi r4, r4, 0x4e
/* 804E052C  4B E8 84 69 */	bl strcmp
/* 804E0530  2C 03 00 00 */	cmpwi r3, 0
/* 804E0534  40 82 00 20 */	bne lbl_804E0554
/* 804E0538  2C 1F 00 04 */	cmpwi r31, 4
/* 804E053C  40 82 00 18 */	bne lbl_804E0554
/* 804E0540  7F A3 EB 78 */	mr r3, r29
/* 804E0544  38 80 00 02 */	li r4, 2
/* 804E0548  38 A0 00 01 */	li r5, 1
/* 804E054C  48 00 07 F9 */	bl onEventReg__9daDitem_cFii
/* 804E0550  48 00 04 D0 */	b lbl_804E0A20
lbl_804E0554:
/* 804E0554  7F C3 F3 78 */	mr r3, r30
/* 804E0558  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E055C  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E0560  38 84 00 55 */	addi r4, r4, 0x55
/* 804E0564  4B E8 84 31 */	bl strcmp
/* 804E0568  2C 03 00 00 */	cmpwi r3, 0
/* 804E056C  40 82 00 20 */	bne lbl_804E058C
/* 804E0570  2C 1F 00 03 */	cmpwi r31, 3
/* 804E0574  40 82 00 18 */	bne lbl_804E058C
/* 804E0578  7F A3 EB 78 */	mr r3, r29
/* 804E057C  38 80 00 02 */	li r4, 2
/* 804E0580  38 A0 00 02 */	li r5, 2
/* 804E0584  48 00 07 C1 */	bl onEventReg__9daDitem_cFii
/* 804E0588  48 00 04 98 */	b lbl_804E0A20
lbl_804E058C:
/* 804E058C  7F C3 F3 78 */	mr r3, r30
/* 804E0590  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E0594  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E0598  38 84 00 55 */	addi r4, r4, 0x55
/* 804E059C  4B E8 83 F9 */	bl strcmp
/* 804E05A0  2C 03 00 00 */	cmpwi r3, 0
/* 804E05A4  40 82 00 20 */	bne lbl_804E05C4
/* 804E05A8  2C 1F 00 08 */	cmpwi r31, 8
/* 804E05AC  40 82 00 18 */	bne lbl_804E05C4
/* 804E05B0  7F A3 EB 78 */	mr r3, r29
/* 804E05B4  38 80 00 02 */	li r4, 2
/* 804E05B8  38 A0 00 03 */	li r5, 3
/* 804E05BC  48 00 07 89 */	bl onEventReg__9daDitem_cFii
/* 804E05C0  48 00 04 60 */	b lbl_804E0A20
lbl_804E05C4:
/* 804E05C4  7F C3 F3 78 */	mr r3, r30
/* 804E05C8  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E05CC  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E05D0  38 84 00 5C */	addi r4, r4, 0x5c
/* 804E05D4  4B E8 83 C1 */	bl strcmp
/* 804E05D8  2C 03 00 00 */	cmpwi r3, 0
/* 804E05DC  40 82 00 20 */	bne lbl_804E05FC
/* 804E05E0  2C 1F 00 0D */	cmpwi r31, 0xd
/* 804E05E4  40 82 00 18 */	bne lbl_804E05FC
/* 804E05E8  7F A3 EB 78 */	mr r3, r29
/* 804E05EC  38 80 00 02 */	li r4, 2
/* 804E05F0  38 A0 00 04 */	li r5, 4
/* 804E05F4  48 00 07 51 */	bl onEventReg__9daDitem_cFii
/* 804E05F8  48 00 04 28 */	b lbl_804E0A20
lbl_804E05FC:
/* 804E05FC  7F C3 F3 78 */	mr r3, r30
/* 804E0600  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E0604  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E0608  38 84 00 5C */	addi r4, r4, 0x5c
/* 804E060C  4B E8 83 89 */	bl strcmp
/* 804E0610  2C 03 00 00 */	cmpwi r3, 0
/* 804E0614  40 82 00 20 */	bne lbl_804E0634
/* 804E0618  2C 1F 00 02 */	cmpwi r31, 2
/* 804E061C  40 82 00 18 */	bne lbl_804E0634
/* 804E0620  7F A3 EB 78 */	mr r3, r29
/* 804E0624  38 80 00 02 */	li r4, 2
/* 804E0628  38 A0 00 05 */	li r5, 5
/* 804E062C  48 00 07 19 */	bl onEventReg__9daDitem_cFii
/* 804E0630  48 00 03 F0 */	b lbl_804E0A20
lbl_804E0634:
/* 804E0634  7F C3 F3 78 */	mr r3, r30
/* 804E0638  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E063C  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E0640  38 84 00 63 */	addi r4, r4, 0x63
/* 804E0644  4B E8 83 51 */	bl strcmp
/* 804E0648  2C 03 00 00 */	cmpwi r3, 0
/* 804E064C  40 82 00 20 */	bne lbl_804E066C
/* 804E0650  2C 1F 00 07 */	cmpwi r31, 7
/* 804E0654  40 82 00 18 */	bne lbl_804E066C
/* 804E0658  7F A3 EB 78 */	mr r3, r29
/* 804E065C  38 80 00 02 */	li r4, 2
/* 804E0660  38 A0 00 06 */	li r5, 6
/* 804E0664  48 00 06 E1 */	bl onEventReg__9daDitem_cFii
/* 804E0668  48 00 03 B8 */	b lbl_804E0A20
lbl_804E066C:
/* 804E066C  7F C3 F3 78 */	mr r3, r30
/* 804E0670  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E0674  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E0678  38 84 00 63 */	addi r4, r4, 0x63
/* 804E067C  4B E8 83 19 */	bl strcmp
/* 804E0680  2C 03 00 00 */	cmpwi r3, 0
/* 804E0684  40 82 00 20 */	bne lbl_804E06A4
/* 804E0688  2C 1F 00 00 */	cmpwi r31, 0
/* 804E068C  40 82 00 18 */	bne lbl_804E06A4
/* 804E0690  7F A3 EB 78 */	mr r3, r29
/* 804E0694  38 80 00 02 */	li r4, 2
/* 804E0698  38 A0 00 07 */	li r5, 7
/* 804E069C  48 00 06 A9 */	bl onEventReg__9daDitem_cFii
/* 804E06A0  48 00 03 80 */	b lbl_804E0A20
lbl_804E06A4:
/* 804E06A4  7F C3 F3 78 */	mr r3, r30
/* 804E06A8  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E06AC  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E06B0  38 84 00 6A */	addi r4, r4, 0x6a
/* 804E06B4  4B E8 82 E1 */	bl strcmp
/* 804E06B8  2C 03 00 00 */	cmpwi r3, 0
/* 804E06BC  40 82 00 20 */	bne lbl_804E06DC
/* 804E06C0  2C 1F 00 04 */	cmpwi r31, 4
/* 804E06C4  40 82 00 18 */	bne lbl_804E06DC
/* 804E06C8  7F A3 EB 78 */	mr r3, r29
/* 804E06CC  38 80 00 03 */	li r4, 3
/* 804E06D0  38 A0 00 00 */	li r5, 0
/* 804E06D4  48 00 06 71 */	bl onEventReg__9daDitem_cFii
/* 804E06D8  48 00 03 48 */	b lbl_804E0A20
lbl_804E06DC:
/* 804E06DC  7F C3 F3 78 */	mr r3, r30
/* 804E06E0  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E06E4  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E06E8  38 84 00 6A */	addi r4, r4, 0x6a
/* 804E06EC  4B E8 82 A9 */	bl strcmp
/* 804E06F0  2C 03 00 00 */	cmpwi r3, 0
/* 804E06F4  40 82 00 20 */	bne lbl_804E0714
/* 804E06F8  2C 1F 00 03 */	cmpwi r31, 3
/* 804E06FC  40 82 00 18 */	bne lbl_804E0714
/* 804E0700  7F A3 EB 78 */	mr r3, r29
/* 804E0704  38 80 00 03 */	li r4, 3
/* 804E0708  38 A0 00 01 */	li r5, 1
/* 804E070C  48 00 06 39 */	bl onEventReg__9daDitem_cFii
/* 804E0710  48 00 03 10 */	b lbl_804E0A20
lbl_804E0714:
/* 804E0714  7F C3 F3 78 */	mr r3, r30
/* 804E0718  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E071C  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E0720  38 84 00 71 */	addi r4, r4, 0x71
/* 804E0724  4B E8 82 71 */	bl strcmp
/* 804E0728  2C 03 00 00 */	cmpwi r3, 0
/* 804E072C  40 82 00 20 */	bne lbl_804E074C
/* 804E0730  2C 1F 00 0B */	cmpwi r31, 0xb
/* 804E0734  40 82 00 18 */	bne lbl_804E074C
/* 804E0738  7F A3 EB 78 */	mr r3, r29
/* 804E073C  38 80 00 03 */	li r4, 3
/* 804E0740  38 A0 00 02 */	li r5, 2
/* 804E0744  48 00 06 01 */	bl onEventReg__9daDitem_cFii
/* 804E0748  48 00 02 D8 */	b lbl_804E0A20
lbl_804E074C:
/* 804E074C  7F C3 F3 78 */	mr r3, r30
/* 804E0750  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E0754  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E0758  38 84 00 71 */	addi r4, r4, 0x71
/* 804E075C  4B E8 82 39 */	bl strcmp
/* 804E0760  2C 03 00 00 */	cmpwi r3, 0
/* 804E0764  40 82 00 20 */	bne lbl_804E0784
/* 804E0768  2C 1F 00 0C */	cmpwi r31, 0xc
/* 804E076C  40 82 00 18 */	bne lbl_804E0784
/* 804E0770  7F A3 EB 78 */	mr r3, r29
/* 804E0774  38 80 00 03 */	li r4, 3
/* 804E0778  38 A0 00 03 */	li r5, 3
/* 804E077C  48 00 05 C9 */	bl onEventReg__9daDitem_cFii
/* 804E0780  48 00 02 A0 */	b lbl_804E0A20
lbl_804E0784:
/* 804E0784  7F C3 F3 78 */	mr r3, r30
/* 804E0788  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E078C  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E0790  38 84 00 78 */	addi r4, r4, 0x78
/* 804E0794  4B E8 82 01 */	bl strcmp
/* 804E0798  2C 03 00 00 */	cmpwi r3, 0
/* 804E079C  40 82 00 20 */	bne lbl_804E07BC
/* 804E07A0  2C 1F 00 04 */	cmpwi r31, 4
/* 804E07A4  40 82 00 18 */	bne lbl_804E07BC
/* 804E07A8  7F A3 EB 78 */	mr r3, r29
/* 804E07AC  38 80 00 03 */	li r4, 3
/* 804E07B0  38 A0 00 04 */	li r5, 4
/* 804E07B4  48 00 05 91 */	bl onEventReg__9daDitem_cFii
/* 804E07B8  48 00 02 68 */	b lbl_804E0A20
lbl_804E07BC:
/* 804E07BC  7F C3 F3 78 */	mr r3, r30
/* 804E07C0  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E07C4  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E07C8  38 84 00 78 */	addi r4, r4, 0x78
/* 804E07CC  4B E8 81 C9 */	bl strcmp
/* 804E07D0  2C 03 00 00 */	cmpwi r3, 0
/* 804E07D4  40 82 00 20 */	bne lbl_804E07F4
/* 804E07D8  2C 1F 00 01 */	cmpwi r31, 1
/* 804E07DC  40 82 00 18 */	bne lbl_804E07F4
/* 804E07E0  7F A3 EB 78 */	mr r3, r29
/* 804E07E4  38 80 00 03 */	li r4, 3
/* 804E07E8  38 A0 00 05 */	li r5, 5
/* 804E07EC  48 00 05 59 */	bl onEventReg__9daDitem_cFii
/* 804E07F0  48 00 02 30 */	b lbl_804E0A20
lbl_804E07F4:
/* 804E07F4  7F C3 F3 78 */	mr r3, r30
/* 804E07F8  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E07FC  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E0800  38 84 00 7F */	addi r4, r4, 0x7f
/* 804E0804  4B E8 81 91 */	bl strcmp
/* 804E0808  2C 03 00 00 */	cmpwi r3, 0
/* 804E080C  40 82 00 20 */	bne lbl_804E082C
/* 804E0810  2C 1F 00 00 */	cmpwi r31, 0
/* 804E0814  40 82 00 18 */	bne lbl_804E082C
/* 804E0818  7F A3 EB 78 */	mr r3, r29
/* 804E081C  38 80 00 03 */	li r4, 3
/* 804E0820  38 A0 00 07 */	li r5, 7
/* 804E0824  48 00 05 21 */	bl onEventReg__9daDitem_cFii
/* 804E0828  48 00 01 F8 */	b lbl_804E0A20
lbl_804E082C:
/* 804E082C  7F C3 F3 78 */	mr r3, r30
/* 804E0830  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E0834  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E0838  38 84 00 87 */	addi r4, r4, 0x87
/* 804E083C  4B E8 81 59 */	bl strcmp
/* 804E0840  2C 03 00 00 */	cmpwi r3, 0
/* 804E0844  40 82 00 20 */	bne lbl_804E0864
/* 804E0848  2C 1F 00 01 */	cmpwi r31, 1
/* 804E084C  40 82 00 18 */	bne lbl_804E0864
/* 804E0850  7F A3 EB 78 */	mr r3, r29
/* 804E0854  38 80 00 04 */	li r4, 4
/* 804E0858  38 A0 00 00 */	li r5, 0
/* 804E085C  48 00 04 E9 */	bl onEventReg__9daDitem_cFii
/* 804E0860  48 00 01 C0 */	b lbl_804E0A20
lbl_804E0864:
/* 804E0864  7F C3 F3 78 */	mr r3, r30
/* 804E0868  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E086C  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E0870  38 84 00 8F */	addi r4, r4, 0x8f
/* 804E0874  4B E8 81 21 */	bl strcmp
/* 804E0878  2C 03 00 00 */	cmpwi r3, 0
/* 804E087C  40 82 00 20 */	bne lbl_804E089C
/* 804E0880  2C 1F 00 00 */	cmpwi r31, 0
/* 804E0884  40 82 00 18 */	bne lbl_804E089C
/* 804E0888  7F A3 EB 78 */	mr r3, r29
/* 804E088C  38 80 00 04 */	li r4, 4
/* 804E0890  38 A0 00 03 */	li r5, 3
/* 804E0894  48 00 04 B1 */	bl onEventReg__9daDitem_cFii
/* 804E0898  48 00 01 88 */	b lbl_804E0A20
lbl_804E089C:
/* 804E089C  7F C3 F3 78 */	mr r3, r30
/* 804E08A0  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E08A4  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E08A8  38 84 00 27 */	addi r4, r4, 0x27
/* 804E08AC  4B E8 80 E9 */	bl strcmp
/* 804E08B0  2C 03 00 00 */	cmpwi r3, 0
/* 804E08B4  40 82 00 20 */	bne lbl_804E08D4
/* 804E08B8  2C 1F 00 05 */	cmpwi r31, 5
/* 804E08BC  40 82 00 18 */	bne lbl_804E08D4
/* 804E08C0  7F A3 EB 78 */	mr r3, r29
/* 804E08C4  38 80 00 04 */	li r4, 4
/* 804E08C8  38 A0 00 05 */	li r5, 5
/* 804E08CC  48 00 04 79 */	bl onEventReg__9daDitem_cFii
/* 804E08D0  48 00 01 50 */	b lbl_804E0A20
lbl_804E08D4:
/* 804E08D4  7F C3 F3 78 */	mr r3, r30
/* 804E08D8  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E08DC  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E08E0  38 84 00 96 */	addi r4, r4, 0x96
/* 804E08E4  4B E8 80 B1 */	bl strcmp
/* 804E08E8  2C 03 00 00 */	cmpwi r3, 0
/* 804E08EC  40 82 00 20 */	bne lbl_804E090C
/* 804E08F0  2C 1F 00 00 */	cmpwi r31, 0
/* 804E08F4  40 82 00 18 */	bne lbl_804E090C
/* 804E08F8  7F A3 EB 78 */	mr r3, r29
/* 804E08FC  38 80 00 04 */	li r4, 4
/* 804E0900  38 A0 00 06 */	li r5, 6
/* 804E0904  48 00 04 41 */	bl onEventReg__9daDitem_cFii
/* 804E0908  48 00 01 18 */	b lbl_804E0A20
lbl_804E090C:
/* 804E090C  7F C3 F3 78 */	mr r3, r30
/* 804E0910  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E0914  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E0918  38 84 00 9E */	addi r4, r4, 0x9e
/* 804E091C  4B E8 80 79 */	bl strcmp
/* 804E0920  2C 03 00 00 */	cmpwi r3, 0
/* 804E0924  40 82 00 20 */	bne lbl_804E0944
/* 804E0928  2C 1F 00 00 */	cmpwi r31, 0
/* 804E092C  40 82 00 18 */	bne lbl_804E0944
/* 804E0930  7F A3 EB 78 */	mr r3, r29
/* 804E0934  38 80 00 04 */	li r4, 4
/* 804E0938  38 A0 00 07 */	li r5, 7
/* 804E093C  48 00 04 09 */	bl onEventReg__9daDitem_cFii
/* 804E0940  48 00 00 E0 */	b lbl_804E0A20
lbl_804E0944:
/* 804E0944  7F C3 F3 78 */	mr r3, r30
/* 804E0948  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E094C  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E0950  38 84 00 A5 */	addi r4, r4, 0xa5
/* 804E0954  4B E8 80 41 */	bl strcmp
/* 804E0958  2C 03 00 00 */	cmpwi r3, 0
/* 804E095C  40 82 00 20 */	bne lbl_804E097C
/* 804E0960  2C 1F 00 00 */	cmpwi r31, 0
/* 804E0964  40 82 00 18 */	bne lbl_804E097C
/* 804E0968  7F A3 EB 78 */	mr r3, r29
/* 804E096C  38 80 00 05 */	li r4, 5
/* 804E0970  38 A0 00 00 */	li r5, 0
/* 804E0974  48 00 03 D1 */	bl onEventReg__9daDitem_cFii
/* 804E0978  48 00 00 A8 */	b lbl_804E0A20
lbl_804E097C:
/* 804E097C  7F C3 F3 78 */	mr r3, r30
/* 804E0980  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E0984  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E0988  38 84 00 AC */	addi r4, r4, 0xac
/* 804E098C  4B E8 80 09 */	bl strcmp
/* 804E0990  2C 03 00 00 */	cmpwi r3, 0
/* 804E0994  40 82 00 20 */	bne lbl_804E09B4
/* 804E0998  2C 1F 00 0A */	cmpwi r31, 0xa
/* 804E099C  40 82 00 18 */	bne lbl_804E09B4
/* 804E09A0  7F A3 EB 78 */	mr r3, r29
/* 804E09A4  38 80 00 05 */	li r4, 5
/* 804E09A8  38 A0 00 01 */	li r5, 1
/* 804E09AC  48 00 03 99 */	bl onEventReg__9daDitem_cFii
/* 804E09B0  48 00 00 70 */	b lbl_804E0A20
lbl_804E09B4:
/* 804E09B4  7F C3 F3 78 */	mr r3, r30
/* 804E09B8  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E09BC  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E09C0  38 84 00 B3 */	addi r4, r4, 0xb3
/* 804E09C4  4B E8 7F D1 */	bl strcmp
/* 804E09C8  2C 03 00 00 */	cmpwi r3, 0
/* 804E09CC  40 82 00 20 */	bne lbl_804E09EC
/* 804E09D0  2C 1F 00 00 */	cmpwi r31, 0
/* 804E09D4  40 82 00 18 */	bne lbl_804E09EC
/* 804E09D8  7F A3 EB 78 */	mr r3, r29
/* 804E09DC  38 80 00 05 */	li r4, 5
/* 804E09E0  38 A0 00 02 */	li r5, 2
/* 804E09E4  48 00 03 61 */	bl onEventReg__9daDitem_cFii
/* 804E09E8  48 00 00 38 */	b lbl_804E0A20
lbl_804E09EC:
/* 804E09EC  7F C3 F3 78 */	mr r3, r30
/* 804E09F0  3C 80 80 4E */	lis r4, d_a_demo_item__stringBase0@ha /* 0x804E1A4C@ha */
/* 804E09F4  38 84 1A 4C */	addi r4, r4, d_a_demo_item__stringBase0@l /* 0x804E1A4C@l */
/* 804E09F8  38 84 00 BA */	addi r4, r4, 0xba
/* 804E09FC  4B E8 7F 99 */	bl strcmp
/* 804E0A00  2C 03 00 00 */	cmpwi r3, 0
/* 804E0A04  40 82 00 1C */	bne lbl_804E0A20
/* 804E0A08  2C 1F 00 02 */	cmpwi r31, 2
/* 804E0A0C  40 82 00 14 */	bne lbl_804E0A20
/* 804E0A10  7F A3 EB 78 */	mr r3, r29
/* 804E0A14  38 80 00 05 */	li r4, 5
/* 804E0A18  38 A0 00 03 */	li r5, 3
/* 804E0A1C  48 00 03 29 */	bl onEventReg__9daDitem_cFii
lbl_804E0A20:
/* 804E0A20  7F A3 EB 78 */	mr r3, r29
/* 804E0A24  48 00 02 8D */	bl endInsectEffect__9daDitem_cFv
/* 804E0A28  38 7D 00 D8 */	addi r3, r29, 0xd8
/* 804E0A2C  4B B3 FA A9 */	bl fopDwTg_DrawQTo__FP16create_tag_class
/* 804E0A30  38 00 00 02 */	li r0, 2
/* 804E0A34  98 1D 09 68 */	stb r0, 0x968(r29)
lbl_804E0A38:
/* 804E0A38  39 61 00 20 */	addi r11, r1, 0x20
/* 804E0A3C  4B E8 17 ED */	bl _restgpr_29
/* 804E0A40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E0A44  7C 08 03 A6 */	mtlr r0
/* 804E0A48  38 21 00 20 */	addi r1, r1, 0x20
/* 804E0A4C  4E 80 00 20 */	blr 
