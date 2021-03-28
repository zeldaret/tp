lbl_8022F540:
/* 8022F540  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8022F544  7C 08 02 A6 */	mflr r0
/* 8022F548  90 01 00 24 */	stw r0, 0x24(r1)
/* 8022F54C  39 61 00 20 */	addi r11, r1, 0x20
/* 8022F550  48 13 2C 8D */	bl _savegpr_29
/* 8022F554  7C 7D 1B 78 */	mr r29, r3
/* 8022F558  7C 9E 23 78 */	mr r30, r4
/* 8022F55C  7F C0 07 34 */	extsh r0, r30
/* 8022F560  2C 00 27 0F */	cmpwi r0, 0x270f
/* 8022F564  40 81 00 08 */	ble lbl_8022F56C
/* 8022F568  3B C0 27 0F */	li r30, 0x270f
lbl_8022F56C:
/* 8022F56C  7F C0 07 35 */	extsh. r0, r30
/* 8022F570  40 80 00 08 */	bge lbl_8022F578
/* 8022F574  3B C0 00 00 */	li r30, 0
lbl_8022F578:
/* 8022F578  83 FD 00 04 */	lwz r31, 4(r29)
/* 8022F57C  88 1F 12 4F */	lbz r0, 0x124f(r31)
/* 8022F580  28 00 00 03 */	cmplwi r0, 3
/* 8022F584  40 82 00 2C */	bne lbl_8022F5B0
/* 8022F588  7F C3 07 34 */	extsh r3, r30
/* 8022F58C  38 00 03 E8 */	li r0, 0x3e8
/* 8022F590  7C 63 03 D6 */	divw r3, r3, r0
/* 8022F594  4B FF 94 C1 */	bl getOutFontNumberType__Fi
/* 8022F598  7C 64 1B 78 */	mr r4, r3
/* 8022F59C  7F A3 EB 78 */	mr r3, r29
/* 8022F5A0  3C A0 FF 00 */	lis r5, 0xFF00 /* 0xFF0000FF@ha */
/* 8022F5A4  38 A5 00 FF */	addi r5, r5, 0x00FF /* 0xFF0000FF@l */
/* 8022F5A8  4B FF F5 3D */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022F5AC  48 00 00 24 */	b lbl_8022F5D0
lbl_8022F5B0:
/* 8022F5B0  7F C3 07 34 */	extsh r3, r30
/* 8022F5B4  38 00 03 E8 */	li r0, 0x3e8
/* 8022F5B8  7C 63 03 D6 */	divw r3, r3, r0
/* 8022F5BC  4B FF 94 99 */	bl getOutFontNumberType__Fi
/* 8022F5C0  7C 64 1B 78 */	mr r4, r3
/* 8022F5C4  7F A3 EB 78 */	mr r3, r29
/* 8022F5C8  38 A0 00 00 */	li r5, 0
/* 8022F5CC  4B FF F5 19 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
lbl_8022F5D0:
/* 8022F5D0  88 1F 12 4F */	lbz r0, 0x124f(r31)
/* 8022F5D4  28 00 00 02 */	cmplwi r0, 2
/* 8022F5D8  40 82 00 3C */	bne lbl_8022F614
/* 8022F5DC  7F C4 07 34 */	extsh r4, r30
/* 8022F5E0  38 60 03 E8 */	li r3, 0x3e8
/* 8022F5E4  7C 04 1B D6 */	divw r0, r4, r3
/* 8022F5E8  7C 00 19 D6 */	mullw r0, r0, r3
/* 8022F5EC  7C 60 20 50 */	subf r3, r0, r4
/* 8022F5F0  38 00 00 64 */	li r0, 0x64
/* 8022F5F4  7C 63 03 D6 */	divw r3, r3, r0
/* 8022F5F8  4B FF 94 5D */	bl getOutFontNumberType__Fi
/* 8022F5FC  7C 64 1B 78 */	mr r4, r3
/* 8022F600  7F A3 EB 78 */	mr r3, r29
/* 8022F604  3C A0 FF 00 */	lis r5, 0xFF00 /* 0xFF0000FF@ha */
/* 8022F608  38 A5 00 FF */	addi r5, r5, 0x00FF /* 0xFF0000FF@l */
/* 8022F60C  4B FF F4 D9 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022F610  48 00 00 34 */	b lbl_8022F644
lbl_8022F614:
/* 8022F614  7F C4 07 34 */	extsh r4, r30
/* 8022F618  38 60 03 E8 */	li r3, 0x3e8
/* 8022F61C  7C 04 1B D6 */	divw r0, r4, r3
/* 8022F620  7C 00 19 D6 */	mullw r0, r0, r3
/* 8022F624  7C 60 20 50 */	subf r3, r0, r4
/* 8022F628  38 00 00 64 */	li r0, 0x64
/* 8022F62C  7C 63 03 D6 */	divw r3, r3, r0
/* 8022F630  4B FF 94 25 */	bl getOutFontNumberType__Fi
/* 8022F634  7C 64 1B 78 */	mr r4, r3
/* 8022F638  7F A3 EB 78 */	mr r3, r29
/* 8022F63C  38 A0 00 00 */	li r5, 0
/* 8022F640  4B FF F4 A5 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
lbl_8022F644:
/* 8022F644  88 1F 12 4F */	lbz r0, 0x124f(r31)
/* 8022F648  28 00 00 01 */	cmplwi r0, 1
/* 8022F64C  40 82 00 3C */	bne lbl_8022F688
/* 8022F650  7F C4 07 34 */	extsh r4, r30
/* 8022F654  38 60 00 64 */	li r3, 0x64
/* 8022F658  7C 04 1B D6 */	divw r0, r4, r3
/* 8022F65C  7C 00 19 D6 */	mullw r0, r0, r3
/* 8022F660  7C 60 20 50 */	subf r3, r0, r4
/* 8022F664  38 00 00 0A */	li r0, 0xa
/* 8022F668  7C 63 03 D6 */	divw r3, r3, r0
/* 8022F66C  4B FF 93 E9 */	bl getOutFontNumberType__Fi
/* 8022F670  7C 64 1B 78 */	mr r4, r3
/* 8022F674  7F A3 EB 78 */	mr r3, r29
/* 8022F678  3C A0 FF 00 */	lis r5, 0xFF00 /* 0xFF0000FF@ha */
/* 8022F67C  38 A5 00 FF */	addi r5, r5, 0x00FF /* 0xFF0000FF@l */
/* 8022F680  4B FF F4 65 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022F684  48 00 00 34 */	b lbl_8022F6B8
lbl_8022F688:
/* 8022F688  7F C4 07 34 */	extsh r4, r30
/* 8022F68C  38 60 00 64 */	li r3, 0x64
/* 8022F690  7C 04 1B D6 */	divw r0, r4, r3
/* 8022F694  7C 00 19 D6 */	mullw r0, r0, r3
/* 8022F698  7C 60 20 50 */	subf r3, r0, r4
/* 8022F69C  38 00 00 0A */	li r0, 0xa
/* 8022F6A0  7C 63 03 D6 */	divw r3, r3, r0
/* 8022F6A4  4B FF 93 B1 */	bl getOutFontNumberType__Fi
/* 8022F6A8  7C 64 1B 78 */	mr r4, r3
/* 8022F6AC  7F A3 EB 78 */	mr r3, r29
/* 8022F6B0  38 A0 00 00 */	li r5, 0
/* 8022F6B4  4B FF F4 31 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
lbl_8022F6B8:
/* 8022F6B8  88 1F 12 4F */	lbz r0, 0x124f(r31)
/* 8022F6BC  28 00 00 00 */	cmplwi r0, 0
/* 8022F6C0  40 82 00 34 */	bne lbl_8022F6F4
/* 8022F6C4  7F C4 07 34 */	extsh r4, r30
/* 8022F6C8  38 60 00 0A */	li r3, 0xa
/* 8022F6CC  7C 04 1B D6 */	divw r0, r4, r3
/* 8022F6D0  7C 00 19 D6 */	mullw r0, r0, r3
/* 8022F6D4  7C 60 20 50 */	subf r3, r0, r4
/* 8022F6D8  4B FF 93 7D */	bl getOutFontNumberType__Fi
/* 8022F6DC  7C 64 1B 78 */	mr r4, r3
/* 8022F6E0  7F A3 EB 78 */	mr r3, r29
/* 8022F6E4  3C A0 FF 00 */	lis r5, 0xFF00 /* 0xFF0000FF@ha */
/* 8022F6E8  38 A5 00 FF */	addi r5, r5, 0x00FF /* 0xFF0000FF@l */
/* 8022F6EC  4B FF F3 F9 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022F6F0  48 00 00 2C */	b lbl_8022F71C
lbl_8022F6F4:
/* 8022F6F4  7F C4 07 34 */	extsh r4, r30
/* 8022F6F8  38 60 00 0A */	li r3, 0xa
/* 8022F6FC  7C 04 1B D6 */	divw r0, r4, r3
/* 8022F700  7C 00 19 D6 */	mullw r0, r0, r3
/* 8022F704  7C 60 20 50 */	subf r3, r0, r4
/* 8022F708  4B FF 93 4D */	bl getOutFontNumberType__Fi
/* 8022F70C  7C 64 1B 78 */	mr r4, r3
/* 8022F710  7F A3 EB 78 */	mr r3, r29
/* 8022F714  38 A0 00 00 */	li r5, 0
/* 8022F718  4B FF F3 CD */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
lbl_8022F71C:
/* 8022F71C  39 61 00 20 */	addi r11, r1, 0x20
/* 8022F720  48 13 2B 09 */	bl _restgpr_29
/* 8022F724  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8022F728  7C 08 03 A6 */	mtlr r0
/* 8022F72C  38 21 00 20 */	addi r1, r1, 0x20
/* 8022F730  4E 80 00 20 */	blr 
