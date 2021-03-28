lbl_8022D74C:
/* 8022D74C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8022D750  7C 08 02 A6 */	mflr r0
/* 8022D754  90 01 00 74 */	stw r0, 0x74(r1)
/* 8022D758  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8022D75C  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8022D760  7C 7E 1B 78 */	mr r30, r3
/* 8022D764  83 E3 00 04 */	lwz r31, 4(r3)
/* 8022D768  54 88 02 1E */	rlwinm r8, r4, 0, 8, 0xf
/* 8022D76C  3C 00 00 04 */	lis r0, 4
/* 8022D770  7C 08 00 00 */	cmpw r8, r0
/* 8022D774  41 82 06 B0 */	beq lbl_8022DE24
/* 8022D778  40 80 00 40 */	bge lbl_8022D7B8
/* 8022D77C  3C 00 00 02 */	lis r0, 2
/* 8022D780  7C 08 00 00 */	cmpw r8, r0
/* 8022D784  41 82 00 64 */	beq lbl_8022D7E8
/* 8022D788  40 80 00 20 */	bge lbl_8022D7A8
/* 8022D78C  3C 00 00 01 */	lis r0, 1
/* 8022D790  7C 08 00 00 */	cmpw r8, r0
/* 8022D794  41 82 00 54 */	beq lbl_8022D7E8
/* 8022D798  40 80 09 78 */	bge lbl_8022E110
/* 8022D79C  2C 08 00 00 */	cmpwi r8, 0
/* 8022D7A0  41 82 00 E4 */	beq lbl_8022D884
/* 8022D7A4  48 00 09 6C */	b lbl_8022E110
lbl_8022D7A8:
/* 8022D7A8  3C 00 00 03 */	lis r0, 3
/* 8022D7AC  7C 08 00 00 */	cmpw r8, r0
/* 8022D7B0  41 82 07 2C */	beq lbl_8022DEDC
/* 8022D7B4  48 00 09 5C */	b lbl_8022E110
lbl_8022D7B8:
/* 8022D7B8  3C 00 00 06 */	lis r0, 6
/* 8022D7BC  7C 08 00 00 */	cmpw r8, r0
/* 8022D7C0  41 82 06 B4 */	beq lbl_8022DE74
/* 8022D7C4  40 80 00 14 */	bge lbl_8022D7D8
/* 8022D7C8  3C 00 00 05 */	lis r0, 5
/* 8022D7CC  7C 08 00 00 */	cmpw r8, r0
/* 8022D7D0  41 82 06 7C */	beq lbl_8022DE4C
/* 8022D7D4  48 00 09 3C */	b lbl_8022E110
lbl_8022D7D8:
/* 8022D7D8  3C E0 00 FF */	lis r7, 0xff
/* 8022D7DC  7C 08 38 00 */	cmpw r8, r7
/* 8022D7E0  41 82 00 10 */	beq lbl_8022D7F0
/* 8022D7E4  48 00 09 2C */	b lbl_8022E110
lbl_8022D7E8:
/* 8022D7E8  38 60 00 01 */	li r3, 1
/* 8022D7EC  48 00 09 28 */	b lbl_8022E114
lbl_8022D7F0:
/* 8022D7F0  38 07 00 02 */	addi r0, r7, 2
/* 8022D7F4  7C 04 00 00 */	cmpw r4, r0
/* 8022D7F8  41 82 00 74 */	beq lbl_8022D86C
/* 8022D7FC  40 80 00 14 */	bge lbl_8022D810
/* 8022D800  7C 04 38 00 */	cmpw r4, r7
/* 8022D804  41 82 00 20 */	beq lbl_8022D824
/* 8022D808  40 80 00 2C */	bge lbl_8022D834
/* 8022D80C  48 00 00 78 */	b lbl_8022D884
lbl_8022D810:
/* 8022D810  3C 60 01 00 */	lis r3, 0x0100 /* 0x00FFFF02@ha */
/* 8022D814  38 03 FF 02 */	addi r0, r3, 0xFF02 /* 0x00FFFF02@l */
/* 8022D818  7C 04 00 00 */	cmpw r4, r0
/* 8022D81C  41 82 00 50 */	beq lbl_8022D86C
/* 8022D820  48 00 00 64 */	b lbl_8022D884
lbl_8022D824:
/* 8022D824  88 85 00 00 */	lbz r4, 0(r5)
/* 8022D828  48 00 0F A5 */	bl do_color__28jmessage_tRenderingProcessorFUc
/* 8022D82C  38 60 00 01 */	li r3, 1
/* 8022D830  48 00 08 E4 */	b lbl_8022E114
lbl_8022D834:
/* 8022D834  A0 05 00 00 */	lhz r0, 0(r5)
/* 8022D838  B0 1E 01 3C */	sth r0, 0x13c(r30)
/* 8022D83C  A0 1E 01 3C */	lhz r0, 0x13c(r30)
/* 8022D840  C8 22 B0 80 */	lfd f1, lit_5154(r2)
/* 8022D844  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8022D848  3C 00 43 30 */	lis r0, 0x4330
/* 8022D84C  90 01 00 58 */	stw r0, 0x58(r1)
/* 8022D850  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 8022D854  EC 20 08 28 */	fsubs f1, f0, f1
/* 8022D858  C0 02 B0 7C */	lfs f0, lit_5151(r2)
/* 8022D85C  EC 21 00 24 */	fdivs f1, f1, f0
/* 8022D860  48 00 10 01 */	bl do_scale__28jmessage_tRenderingProcessorFf
/* 8022D864  38 60 00 01 */	li r3, 1
/* 8022D868  48 00 08 AC */	b lbl_8022E114
lbl_8022D86C:
/* 8022D86C  7F C3 F3 78 */	mr r3, r30
/* 8022D870  7C A4 2B 78 */	mr r4, r5
/* 8022D874  7C C5 33 78 */	mr r5, r6
/* 8022D878  48 00 18 D1 */	bl do_rubyset__28jmessage_tRenderingProcessorFPCvUl
/* 8022D87C  38 60 00 01 */	li r3, 1
/* 8022D880  48 00 08 94 */	b lbl_8022E114
lbl_8022D884:
/* 8022D884  28 04 00 3F */	cmplwi r4, 0x3f
/* 8022D888  41 81 05 9C */	bgt lbl_8022DE24
/* 8022D88C  3C 60 80 3C */	lis r3, lit_6571@ha
/* 8022D890  38 63 04 48 */	addi r3, r3, lit_6571@l
/* 8022D894  54 80 10 3A */	slwi r0, r4, 2
/* 8022D898  7C 03 00 2E */	lwzx r0, r3, r0
/* 8022D89C  7C 09 03 A6 */	mtctr r0
/* 8022D8A0  4E 80 04 20 */	bctr 
/* 8022D8A4  7F C3 F3 78 */	mr r3, r30
/* 8022D8A8  48 00 1E 8D */	bl push_word__28jmessage_tRenderingProcessorFv
/* 8022D8AC  38 60 00 01 */	li r3, 1
/* 8022D8B0  48 00 08 64 */	b lbl_8022E114
/* 8022D8B4  48 00 AC 61 */	bl getWord__12dMsgObject_cFv
/* 8022D8B8  7C 64 1B 78 */	mr r4, r3
/* 8022D8BC  7F C3 F3 78 */	mr r3, r30
/* 8022D8C0  48 07 A3 39 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022D8C4  48 00 AC B1 */	bl getSelectWordFlag__12dMsgObject_cFv
/* 8022D8C8  98 7E 01 51 */	stb r3, 0x151(r30)
/* 8022D8CC  38 60 00 01 */	li r3, 1
/* 8022D8D0  48 00 08 44 */	b lbl_8022E114
/* 8022D8D4  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8022D8D8  48 00 99 F5 */	bl getSmellName__12dMsgObject_cFv
/* 8022D8DC  7C 64 1B 78 */	mr r4, r3
/* 8022D8E0  7F C3 F3 78 */	mr r3, r30
/* 8022D8E4  48 07 A3 15 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022D8E8  38 60 00 01 */	li r3, 1
/* 8022D8EC  48 00 08 28 */	b lbl_8022E114
/* 8022D8F0  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8022D8F4  48 00 9A 41 */	bl getPortalName__12dMsgObject_cFv
/* 8022D8F8  7C 64 1B 78 */	mr r4, r3
/* 8022D8FC  7F C3 F3 78 */	mr r3, r30
/* 8022D900  48 07 A2 F9 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022D904  38 60 00 01 */	li r3, 1
/* 8022D908  48 00 08 0C */	b lbl_8022E114
/* 8022D90C  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8022D910  48 00 9A 7D */	bl getBombName__12dMsgObject_cFv
/* 8022D914  7C 64 1B 78 */	mr r4, r3
/* 8022D918  7F C3 F3 78 */	mr r3, r30
/* 8022D91C  48 07 A2 DD */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022D920  38 60 00 01 */	li r3, 1
/* 8022D924  48 00 07 F0 */	b lbl_8022E114
/* 8022D928  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8022D92C  48 00 9A F1 */	bl getInsectName__12dMsgObject_cFv
/* 8022D930  7C 64 1B 78 */	mr r4, r3
/* 8022D934  7F C3 F3 78 */	mr r3, r30
/* 8022D938  48 07 A2 C1 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022D93C  38 60 00 01 */	li r3, 1
/* 8022D940  48 00 07 D4 */	b lbl_8022E114
/* 8022D944  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8022D948  48 00 9B 31 */	bl getLetterName__12dMsgObject_cFv
/* 8022D94C  7C 64 1B 78 */	mr r4, r3
/* 8022D950  7F C3 F3 78 */	mr r3, r30
/* 8022D954  48 07 A2 A5 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022D958  38 60 00 01 */	li r3, 1
/* 8022D95C  48 00 07 B8 */	b lbl_8022E114
/* 8022D960  7F C3 F3 78 */	mr r3, r30
/* 8022D964  A0 05 00 00 */	lhz r0, 0(r5)
/* 8022D968  7C 04 07 34 */	extsh r4, r0
/* 8022D96C  48 00 0F F5 */	bl do_linedown__28jmessage_tRenderingProcessorFs
/* 8022D970  38 60 00 01 */	li r3, 1
/* 8022D974  48 00 07 A0 */	b lbl_8022E114
/* 8022D978  7F C3 F3 78 */	mr r3, r30
/* 8022D97C  48 00 1D B9 */	bl push_word__28jmessage_tRenderingProcessorFv
/* 8022D980  38 60 00 01 */	li r3, 1
/* 8022D984  48 00 07 90 */	b lbl_8022E114
/* 8022D988  88 1E 01 4E */	lbz r0, 0x14e(r30)
/* 8022D98C  28 00 00 00 */	cmplwi r0, 0
/* 8022D990  40 82 00 0C */	bne lbl_8022D99C
/* 8022D994  38 00 00 01 */	li r0, 1
/* 8022D998  98 1E 01 4E */	stb r0, 0x14e(r30)
lbl_8022D99C:
/* 8022D99C  88 7E 01 4E */	lbz r3, 0x14e(r30)
/* 8022D9A0  38 03 00 01 */	addi r0, r3, 1
/* 8022D9A4  98 1E 01 4E */	stb r0, 0x14e(r30)
/* 8022D9A8  38 00 00 00 */	li r0, 0
/* 8022D9AC  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 8022D9B0  88 1E 01 4E */	lbz r0, 0x14e(r30)
/* 8022D9B4  54 00 10 3A */	slwi r0, r0, 2
/* 8022D9B8  7C 7E 02 14 */	add r3, r30, r0
/* 8022D9BC  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 8022D9C0  D0 1E 00 48 */	stfs f0, 0x48(r30)
/* 8022D9C4  7F C3 F3 78 */	mr r3, r30
/* 8022D9C8  88 9E 01 4E */	lbz r4, 0x14e(r30)
/* 8022D9CC  38 84 FF FF */	addi r4, r4, -1
/* 8022D9D0  48 00 08 91 */	bl do_selwidthcenter__28jmessage_tRenderingProcessorFi
/* 8022D9D4  38 60 00 01 */	li r3, 1
/* 8022D9D8  48 00 07 3C */	b lbl_8022E114
/* 8022D9DC  7F C3 F3 78 */	mr r3, r30
/* 8022D9E0  48 00 13 31 */	bl do_arrow2__28jmessage_tRenderingProcessorFv
/* 8022D9E4  38 60 00 01 */	li r3, 1
/* 8022D9E8  48 00 07 2C */	b lbl_8022E114
/* 8022D9EC  7F C3 F3 78 */	mr r3, r30
/* 8022D9F0  48 00 13 21 */	bl do_arrow2__28jmessage_tRenderingProcessorFv
/* 8022D9F4  38 60 00 01 */	li r3, 1
/* 8022D9F8  48 00 07 1C */	b lbl_8022E114
/* 8022D9FC  7F C3 F3 78 */	mr r3, r30
/* 8022DA00  38 80 00 0A */	li r4, 0xa
/* 8022DA04  81 9E 00 00 */	lwz r12, 0(r30)
/* 8022DA08  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8022DA0C  7D 89 03 A6 */	mtctr r12
/* 8022DA10  4E 80 04 21 */	bctrl 
/* 8022DA14  7F C3 F3 78 */	mr r3, r30
/* 8022DA18  80 9F 05 C4 */	lwz r4, 0x5c4(r31)
/* 8022DA1C  48 07 A1 DD */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022DA20  38 60 00 01 */	li r3, 1
/* 8022DA24  48 00 06 F0 */	b lbl_8022E114
/* 8022DA28  7F C3 F3 78 */	mr r3, r30
/* 8022DA2C  48 00 1B 11 */	bl do_name1__28jmessage_tRenderingProcessorFv
/* 8022DA30  38 60 00 01 */	li r3, 1
/* 8022DA34  48 00 06 E0 */	b lbl_8022E114
/* 8022DA38  7F C3 F3 78 */	mr r3, r30
/* 8022DA3C  38 80 00 00 */	li r4, 0
/* 8022DA40  38 A0 00 00 */	li r5, 0
/* 8022DA44  48 00 10 A1 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DA48  38 60 00 01 */	li r3, 1
/* 8022DA4C  48 00 06 C8 */	b lbl_8022E114
/* 8022DA50  7F C3 F3 78 */	mr r3, r30
/* 8022DA54  38 80 00 01 */	li r4, 1
/* 8022DA58  38 A0 00 00 */	li r5, 0
/* 8022DA5C  48 00 10 89 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DA60  38 60 00 01 */	li r3, 1
/* 8022DA64  48 00 06 B0 */	b lbl_8022E114
/* 8022DA68  7F C3 F3 78 */	mr r3, r30
/* 8022DA6C  38 80 00 02 */	li r4, 2
/* 8022DA70  38 A0 00 00 */	li r5, 0
/* 8022DA74  48 00 10 71 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DA78  38 60 00 01 */	li r3, 1
/* 8022DA7C  48 00 06 98 */	b lbl_8022E114
/* 8022DA80  7F C3 F3 78 */	mr r3, r30
/* 8022DA84  38 80 00 03 */	li r4, 3
/* 8022DA88  38 A0 00 00 */	li r5, 0
/* 8022DA8C  48 00 10 59 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DA90  38 60 00 01 */	li r3, 1
/* 8022DA94  48 00 06 80 */	b lbl_8022E114
/* 8022DA98  7F C3 F3 78 */	mr r3, r30
/* 8022DA9C  38 80 00 04 */	li r4, 4
/* 8022DAA0  38 A0 00 00 */	li r5, 0
/* 8022DAA4  48 00 10 41 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DAA8  38 60 00 01 */	li r3, 1
/* 8022DAAC  48 00 06 68 */	b lbl_8022E114
/* 8022DAB0  7F C3 F3 78 */	mr r3, r30
/* 8022DAB4  38 80 00 05 */	li r4, 5
/* 8022DAB8  38 A0 00 00 */	li r5, 0
/* 8022DABC  48 00 10 29 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DAC0  38 60 00 01 */	li r3, 1
/* 8022DAC4  48 00 06 50 */	b lbl_8022E114
/* 8022DAC8  7F C3 F3 78 */	mr r3, r30
/* 8022DACC  38 80 00 06 */	li r4, 6
/* 8022DAD0  38 A0 00 00 */	li r5, 0
/* 8022DAD4  48 00 10 11 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DAD8  38 60 00 01 */	li r3, 1
/* 8022DADC  48 00 06 38 */	b lbl_8022E114
/* 8022DAE0  7F C3 F3 78 */	mr r3, r30
/* 8022DAE4  38 80 00 07 */	li r4, 7
/* 8022DAE8  38 A0 00 00 */	li r5, 0
/* 8022DAEC  48 00 0F F9 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DAF0  38 60 00 01 */	li r3, 1
/* 8022DAF4  48 00 06 20 */	b lbl_8022E114
/* 8022DAF8  7F C3 F3 78 */	mr r3, r30
/* 8022DAFC  38 80 00 08 */	li r4, 8
/* 8022DB00  38 A0 00 00 */	li r5, 0
/* 8022DB04  48 00 0F E1 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DB08  38 60 00 01 */	li r3, 1
/* 8022DB0C  48 00 06 08 */	b lbl_8022E114
/* 8022DB10  7F C3 F3 78 */	mr r3, r30
/* 8022DB14  38 80 00 09 */	li r4, 9
/* 8022DB18  38 A0 00 00 */	li r5, 0
/* 8022DB1C  48 00 0F C9 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DB20  38 60 00 01 */	li r3, 1
/* 8022DB24  48 00 05 F0 */	b lbl_8022E114
/* 8022DB28  7F C3 F3 78 */	mr r3, r30
/* 8022DB2C  38 80 00 0A */	li r4, 0xa
/* 8022DB30  38 A0 00 00 */	li r5, 0
/* 8022DB34  48 00 0F B1 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DB38  38 60 00 01 */	li r3, 1
/* 8022DB3C  48 00 05 D8 */	b lbl_8022E114
/* 8022DB40  7F C3 F3 78 */	mr r3, r30
/* 8022DB44  38 80 00 0B */	li r4, 0xb
/* 8022DB48  38 A0 00 00 */	li r5, 0
/* 8022DB4C  48 00 0F 99 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DB50  38 60 00 01 */	li r3, 1
/* 8022DB54  48 00 05 C0 */	b lbl_8022E114
/* 8022DB58  7F C3 F3 78 */	mr r3, r30
/* 8022DB5C  38 80 00 0C */	li r4, 0xc
/* 8022DB60  38 A0 00 00 */	li r5, 0
/* 8022DB64  48 00 0F 81 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DB68  38 60 00 01 */	li r3, 1
/* 8022DB6C  48 00 05 A8 */	b lbl_8022E114
/* 8022DB70  7F C3 F3 78 */	mr r3, r30
/* 8022DB74  38 80 00 0D */	li r4, 0xd
/* 8022DB78  38 A0 00 00 */	li r5, 0
/* 8022DB7C  48 00 0F 69 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DB80  38 60 00 01 */	li r3, 1
/* 8022DB84  48 00 05 90 */	b lbl_8022E114
/* 8022DB88  7F C3 F3 78 */	mr r3, r30
/* 8022DB8C  38 80 00 0E */	li r4, 0xe
/* 8022DB90  38 A0 00 00 */	li r5, 0
/* 8022DB94  48 00 0F 51 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DB98  38 60 00 01 */	li r3, 1
/* 8022DB9C  48 00 05 78 */	b lbl_8022E114
/* 8022DBA0  7F C3 F3 78 */	mr r3, r30
/* 8022DBA4  38 80 00 0F */	li r4, 0xf
/* 8022DBA8  38 A0 00 00 */	li r5, 0
/* 8022DBAC  48 00 0F 39 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DBB0  38 60 00 01 */	li r3, 1
/* 8022DBB4  48 00 05 60 */	b lbl_8022E114
/* 8022DBB8  7F C3 F3 78 */	mr r3, r30
/* 8022DBBC  38 80 00 10 */	li r4, 0x10
/* 8022DBC0  38 A0 00 00 */	li r5, 0
/* 8022DBC4  48 00 0F 21 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DBC8  38 60 00 01 */	li r3, 1
/* 8022DBCC  48 00 05 48 */	b lbl_8022E114
/* 8022DBD0  7F C3 F3 78 */	mr r3, r30
/* 8022DBD4  38 80 00 11 */	li r4, 0x11
/* 8022DBD8  38 A0 00 00 */	li r5, 0
/* 8022DBDC  48 00 0F 09 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DBE0  38 60 00 01 */	li r3, 1
/* 8022DBE4  48 00 05 30 */	b lbl_8022E114
/* 8022DBE8  7F C3 F3 78 */	mr r3, r30
/* 8022DBEC  38 80 00 12 */	li r4, 0x12
/* 8022DBF0  38 A0 00 00 */	li r5, 0
/* 8022DBF4  48 00 0E F1 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DBF8  38 60 00 01 */	li r3, 1
/* 8022DBFC  48 00 05 18 */	b lbl_8022E114
/* 8022DC00  7F C3 F3 78 */	mr r3, r30
/* 8022DC04  38 80 00 13 */	li r4, 0x13
/* 8022DC08  38 A0 00 00 */	li r5, 0
/* 8022DC0C  48 00 0E D9 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DC10  38 60 00 01 */	li r3, 1
/* 8022DC14  48 00 05 00 */	b lbl_8022E114
/* 8022DC18  7F C3 F3 78 */	mr r3, r30
/* 8022DC1C  38 80 00 14 */	li r4, 0x14
/* 8022DC20  38 A0 00 00 */	li r5, 0
/* 8022DC24  48 00 0E C1 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DC28  38 60 00 01 */	li r3, 1
/* 8022DC2C  48 00 04 E8 */	b lbl_8022E114
/* 8022DC30  7F C3 F3 78 */	mr r3, r30
/* 8022DC34  38 80 00 15 */	li r4, 0x15
/* 8022DC38  38 A0 00 00 */	li r5, 0
/* 8022DC3C  48 00 0E A9 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DC40  38 60 00 01 */	li r3, 1
/* 8022DC44  48 00 04 D0 */	b lbl_8022E114
/* 8022DC48  7F C3 F3 78 */	mr r3, r30
/* 8022DC4C  38 80 00 1E */	li r4, 0x1e
/* 8022DC50  38 A0 00 00 */	li r5, 0
/* 8022DC54  48 00 0E 91 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DC58  7F C3 F3 78 */	mr r3, r30
/* 8022DC5C  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 8022DC60  A8 84 01 74 */	lha r4, 0x174(r4)
/* 8022DC64  48 00 18 DD */	bl do_numset__28jmessage_tRenderingProcessorFs
/* 8022DC68  38 60 00 01 */	li r3, 1
/* 8022DC6C  48 00 04 A8 */	b lbl_8022E114
/* 8022DC70  38 60 00 01 */	li r3, 1
/* 8022DC74  48 00 04 A0 */	b lbl_8022E114
/* 8022DC78  7F C3 F3 78 */	mr r3, r30
/* 8022DC7C  38 80 00 17 */	li r4, 0x17
/* 8022DC80  38 A0 00 00 */	li r5, 0
/* 8022DC84  48 00 0E 61 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DC88  38 60 00 01 */	li r3, 1
/* 8022DC8C  48 00 04 88 */	b lbl_8022E114
/* 8022DC90  7F C3 F3 78 */	mr r3, r30
/* 8022DC94  38 80 00 18 */	li r4, 0x18
/* 8022DC98  38 A0 00 00 */	li r5, 0
/* 8022DC9C  48 00 0E 49 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DCA0  38 60 00 01 */	li r3, 1
/* 8022DCA4  48 00 04 70 */	b lbl_8022E114
/* 8022DCA8  7F C3 F3 78 */	mr r3, r30
/* 8022DCAC  38 80 00 19 */	li r4, 0x19
/* 8022DCB0  38 A0 00 00 */	li r5, 0
/* 8022DCB4  48 00 0E 31 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DCB8  38 60 00 01 */	li r3, 1
/* 8022DCBC  48 00 04 58 */	b lbl_8022E114
/* 8022DCC0  48 00 A9 79 */	bl getItemEquipButton__12dMsgObject_cFv
/* 8022DCC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022DCC8  40 82 00 18 */	bne lbl_8022DCE0
/* 8022DCCC  7F C3 F3 78 */	mr r3, r30
/* 8022DCD0  38 80 00 05 */	li r4, 5
/* 8022DCD4  38 A0 00 00 */	li r5, 0
/* 8022DCD8  48 00 0E 0D */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DCDC  48 00 00 14 */	b lbl_8022DCF0
lbl_8022DCE0:
/* 8022DCE0  7F C3 F3 78 */	mr r3, r30
/* 8022DCE4  38 80 00 06 */	li r4, 6
/* 8022DCE8  38 A0 00 00 */	li r5, 0
/* 8022DCEC  48 00 0D F9 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
lbl_8022DCF0:
/* 8022DCF0  38 60 00 01 */	li r3, 1
/* 8022DCF4  48 00 04 20 */	b lbl_8022E114
/* 8022DCF8  48 00 A9 41 */	bl getItemEquipButton__12dMsgObject_cFv
/* 8022DCFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022DD00  40 82 00 18 */	bne lbl_8022DD18
/* 8022DD04  7F C3 F3 78 */	mr r3, r30
/* 8022DD08  38 80 00 06 */	li r4, 6
/* 8022DD0C  38 A0 00 00 */	li r5, 0
/* 8022DD10  48 00 0D D5 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DD14  48 00 00 14 */	b lbl_8022DD28
lbl_8022DD18:
/* 8022DD18  7F C3 F3 78 */	mr r3, r30
/* 8022DD1C  38 80 00 05 */	li r4, 5
/* 8022DD20  38 A0 00 00 */	li r5, 0
/* 8022DD24  48 00 0D C1 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
lbl_8022DD28:
/* 8022DD28  38 60 00 01 */	li r3, 1
/* 8022DD2C  48 00 03 E8 */	b lbl_8022E114
/* 8022DD30  7F C3 F3 78 */	mr r3, r30
/* 8022DD34  38 80 00 29 */	li r4, 0x29
/* 8022DD38  38 A0 00 00 */	li r5, 0
/* 8022DD3C  48 00 0D A9 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DD40  38 60 00 01 */	li r3, 1
/* 8022DD44  48 00 03 D0 */	b lbl_8022E114
/* 8022DD48  7F C3 F3 78 */	mr r3, r30
/* 8022DD4C  38 80 00 1B */	li r4, 0x1b
/* 8022DD50  38 A0 00 00 */	li r5, 0
/* 8022DD54  48 00 0D 91 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DD58  38 60 00 01 */	li r3, 1
/* 8022DD5C  48 00 03 B8 */	b lbl_8022E114
/* 8022DD60  7F C3 F3 78 */	mr r3, r30
/* 8022DD64  38 80 00 1C */	li r4, 0x1c
/* 8022DD68  38 A0 00 00 */	li r5, 0
/* 8022DD6C  48 00 0D 79 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DD70  38 60 00 01 */	li r3, 1
/* 8022DD74  48 00 03 A0 */	b lbl_8022E114
/* 8022DD78  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8022DD7C  48 00 97 55 */	bl getSelectBombNum__12dMsgObject_cFv
/* 8022DD80  7C 60 1B 78 */	mr r0, r3
/* 8022DD84  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8022DD88  38 80 00 07 */	li r4, 7
/* 8022DD8C  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8022DD90  38 C1 00 30 */	addi r6, r1, 0x30
/* 8022DD94  38 E0 00 01 */	li r7, 1
/* 8022DD98  48 00 AF 55 */	bl setTag__10dMsgUnit_cFiiPcb
/* 8022DD9C  7F E3 FB 78 */	mr r3, r31
/* 8022DDA0  88 9E 01 4F */	lbz r4, 0x14f(r30)
/* 8022DDA4  7C 84 07 74 */	extsb r4, r4
/* 8022DDA8  4B FF B9 89 */	bl getWord__19jmessage_tReferenceFi
/* 8022DDAC  38 81 00 30 */	addi r4, r1, 0x30
/* 8022DDB0  48 13 AD 7D */	bl strcpy
/* 8022DDB4  7F C3 F3 78 */	mr r3, r30
/* 8022DDB8  48 00 19 7D */	bl push_word__28jmessage_tRenderingProcessorFv
/* 8022DDBC  38 60 00 01 */	li r3, 1
/* 8022DDC0  48 00 03 54 */	b lbl_8022E114
/* 8022DDC4  48 00 A8 1D */	bl getSelectBombPrice__12dMsgObject_cFv
/* 8022DDC8  7C 60 1B 78 */	mr r0, r3
/* 8022DDCC  38 6D 8B 50 */	la r3, g_msg_unit(r13) /* 804510D0-_SDA_BASE_ */
/* 8022DDD0  38 80 00 01 */	li r4, 1
/* 8022DDD4  7C 05 07 34 */	extsh r5, r0
/* 8022DDD8  38 C1 00 08 */	addi r6, r1, 8
/* 8022DDDC  38 E0 00 01 */	li r7, 1
/* 8022DDE0  48 00 AF 0D */	bl setTag__10dMsgUnit_cFiiPcb
/* 8022DDE4  7F E3 FB 78 */	mr r3, r31
/* 8022DDE8  88 9E 01 4F */	lbz r4, 0x14f(r30)
/* 8022DDEC  7C 84 07 74 */	extsb r4, r4
/* 8022DDF0  4B FF B9 41 */	bl getWord__19jmessage_tReferenceFi
/* 8022DDF4  38 81 00 08 */	addi r4, r1, 8
/* 8022DDF8  48 13 AD 35 */	bl strcpy
/* 8022DDFC  7F C3 F3 78 */	mr r3, r30
/* 8022DE00  48 00 19 35 */	bl push_word__28jmessage_tRenderingProcessorFv
/* 8022DE04  38 60 00 01 */	li r3, 1
/* 8022DE08  48 00 03 0C */	b lbl_8022E114
/* 8022DE0C  7F C3 F3 78 */	mr r3, r30
/* 8022DE10  48 00 19 25 */	bl push_word__28jmessage_tRenderingProcessorFv
/* 8022DE14  38 60 00 01 */	li r3, 1
/* 8022DE18  48 00 02 FC */	b lbl_8022E114
/* 8022DE1C  38 60 00 01 */	li r3, 1
/* 8022DE20  48 00 02 F4 */	b lbl_8022E114
lbl_8022DE24:
/* 8022DE24  54 80 04 0E */	rlwinm r0, r4, 0, 0x10, 7
/* 8022DE28  2C 00 00 0E */	cmpwi r0, 0xe
/* 8022DE2C  40 80 00 20 */	bge lbl_8022DE4C
/* 8022DE30  2C 00 00 00 */	cmpwi r0, 0
/* 8022DE34  40 80 00 08 */	bge lbl_8022DE3C
/* 8022DE38  48 00 00 14 */	b lbl_8022DE4C
lbl_8022DE3C:
/* 8022DE3C  7F C3 F3 78 */	mr r3, r30
/* 8022DE40  48 00 18 F5 */	bl push_word__28jmessage_tRenderingProcessorFv
/* 8022DE44  38 60 00 01 */	li r3, 1
/* 8022DE48  48 00 02 CC */	b lbl_8022E114
lbl_8022DE4C:
/* 8022DE4C  54 80 04 0E */	rlwinm r0, r4, 0, 0x10, 7
/* 8022DE50  2C 00 00 0F */	cmpwi r0, 0xf
/* 8022DE54  40 80 00 20 */	bge lbl_8022DE74
/* 8022DE58  2C 00 00 00 */	cmpwi r0, 0
/* 8022DE5C  40 80 00 08 */	bge lbl_8022DE64
/* 8022DE60  48 00 00 14 */	b lbl_8022DE74
lbl_8022DE64:
/* 8022DE64  7F C3 F3 78 */	mr r3, r30
/* 8022DE68  48 00 18 CD */	bl push_word__28jmessage_tRenderingProcessorFv
/* 8022DE6C  38 60 00 01 */	li r3, 1
/* 8022DE70  48 00 02 A4 */	b lbl_8022E114
lbl_8022DE74:
/* 8022DE74  54 80 04 0E */	rlwinm r0, r4, 0, 0x10, 7
/* 8022DE78  2C 00 00 0A */	cmpwi r0, 0xa
/* 8022DE7C  41 82 00 30 */	beq lbl_8022DEAC
/* 8022DE80  40 80 00 10 */	bge lbl_8022DE90
/* 8022DE84  2C 00 00 00 */	cmpwi r0, 0
/* 8022DE88  40 80 00 14 */	bge lbl_8022DE9C
/* 8022DE8C  48 00 00 50 */	b lbl_8022DEDC
lbl_8022DE90:
/* 8022DE90  2C 00 00 0C */	cmpwi r0, 0xc
/* 8022DE94  40 80 00 48 */	bge lbl_8022DEDC
/* 8022DE98  48 00 00 2C */	b lbl_8022DEC4
lbl_8022DE9C:
/* 8022DE9C  7F C3 F3 78 */	mr r3, r30
/* 8022DEA0  48 00 18 95 */	bl push_word__28jmessage_tRenderingProcessorFv
/* 8022DEA4  38 60 00 01 */	li r3, 1
/* 8022DEA8  48 00 02 6C */	b lbl_8022E114
lbl_8022DEAC:
/* 8022DEAC  7F C3 F3 78 */	mr r3, r30
/* 8022DEB0  38 80 00 2A */	li r4, 0x2a
/* 8022DEB4  38 A0 00 00 */	li r5, 0
/* 8022DEB8  48 00 0C 2D */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DEBC  38 60 00 01 */	li r3, 1
/* 8022DEC0  48 00 02 54 */	b lbl_8022E114
lbl_8022DEC4:
/* 8022DEC4  7F C3 F3 78 */	mr r3, r30
/* 8022DEC8  38 80 00 2B */	li r4, 0x2b
/* 8022DECC  38 A0 00 00 */	li r5, 0
/* 8022DED0  48 00 0C 15 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DED4  38 60 00 01 */	li r3, 1
/* 8022DED8  48 00 02 3C */	b lbl_8022E114
lbl_8022DEDC:
/* 8022DEDC  54 80 04 0E */	rlwinm r0, r4, 0, 0x10, 7
/* 8022DEE0  28 00 00 14 */	cmplwi r0, 0x14
/* 8022DEE4  41 81 02 2C */	bgt lbl_8022E110
/* 8022DEE8  3C 60 80 3C */	lis r3, lit_6572@ha
/* 8022DEEC  38 63 03 F4 */	addi r3, r3, lit_6572@l
/* 8022DEF0  54 00 10 3A */	slwi r0, r0, 2
/* 8022DEF4  7C 03 00 2E */	lwzx r0, r3, r0
/* 8022DEF8  7C 09 03 A6 */	mtctr r0
/* 8022DEFC  4E 80 04 20 */	bctr 
/* 8022DF00  7F C3 F3 78 */	mr r3, r30
/* 8022DF04  38 80 00 00 */	li r4, 0
/* 8022DF08  38 A0 00 00 */	li r5, 0
/* 8022DF0C  48 00 0B D9 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DF10  38 60 00 01 */	li r3, 1
/* 8022DF14  48 00 02 00 */	b lbl_8022E114
/* 8022DF18  7F C3 F3 78 */	mr r3, r30
/* 8022DF1C  38 80 00 33 */	li r4, 0x33
/* 8022DF20  38 A0 00 00 */	li r5, 0
/* 8022DF24  48 00 0B C1 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DF28  38 60 00 01 */	li r3, 1
/* 8022DF2C  48 00 01 E8 */	b lbl_8022E114
/* 8022DF30  7F C3 F3 78 */	mr r3, r30
/* 8022DF34  38 80 00 34 */	li r4, 0x34
/* 8022DF38  38 A0 00 00 */	li r5, 0
/* 8022DF3C  48 00 0B A9 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DF40  38 60 00 01 */	li r3, 1
/* 8022DF44  48 00 01 D0 */	b lbl_8022E114
/* 8022DF48  7F C3 F3 78 */	mr r3, r30
/* 8022DF4C  38 80 00 35 */	li r4, 0x35
/* 8022DF50  38 A0 00 00 */	li r5, 0
/* 8022DF54  48 00 0B 91 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DF58  38 60 00 01 */	li r3, 1
/* 8022DF5C  48 00 01 B8 */	b lbl_8022E114
/* 8022DF60  7F C3 F3 78 */	mr r3, r30
/* 8022DF64  38 80 00 36 */	li r4, 0x36
/* 8022DF68  38 A0 00 00 */	li r5, 0
/* 8022DF6C  48 00 0B 79 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DF70  38 60 00 01 */	li r3, 1
/* 8022DF74  48 00 01 A0 */	b lbl_8022E114
/* 8022DF78  7F C3 F3 78 */	mr r3, r30
/* 8022DF7C  38 80 00 3F */	li r4, 0x3f
/* 8022DF80  38 A0 00 00 */	li r5, 0
/* 8022DF84  48 00 0B 61 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DF88  38 60 00 01 */	li r3, 1
/* 8022DF8C  48 00 01 88 */	b lbl_8022E114
/* 8022DF90  7F C3 F3 78 */	mr r3, r30
/* 8022DF94  38 80 00 40 */	li r4, 0x40
/* 8022DF98  38 A0 00 00 */	li r5, 0
/* 8022DF9C  48 00 0B 49 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DFA0  38 60 00 01 */	li r3, 1
/* 8022DFA4  48 00 01 70 */	b lbl_8022E114
/* 8022DFA8  7F C3 F3 78 */	mr r3, r30
/* 8022DFAC  38 80 00 32 */	li r4, 0x32
/* 8022DFB0  38 A0 00 00 */	li r5, 0
/* 8022DFB4  48 00 0B 31 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DFB8  38 60 00 01 */	li r3, 1
/* 8022DFBC  48 00 01 58 */	b lbl_8022E114
/* 8022DFC0  7F C3 F3 78 */	mr r3, r30
/* 8022DFC4  38 80 00 31 */	li r4, 0x31
/* 8022DFC8  38 A0 00 00 */	li r5, 0
/* 8022DFCC  48 00 0B 19 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DFD0  38 60 00 01 */	li r3, 1
/* 8022DFD4  48 00 01 40 */	b lbl_8022E114
/* 8022DFD8  7F C3 F3 78 */	mr r3, r30
/* 8022DFDC  38 80 00 41 */	li r4, 0x41
/* 8022DFE0  38 A0 00 00 */	li r5, 0
/* 8022DFE4  48 00 0B 01 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022DFE8  38 60 00 01 */	li r3, 1
/* 8022DFEC  48 00 01 28 */	b lbl_8022E114
/* 8022DFF0  7F C3 F3 78 */	mr r3, r30
/* 8022DFF4  38 80 00 42 */	li r4, 0x42
/* 8022DFF8  38 A0 00 00 */	li r5, 0
/* 8022DFFC  48 00 0A E9 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022E000  38 60 00 01 */	li r3, 1
/* 8022E004  48 00 01 10 */	b lbl_8022E114
/* 8022E008  7F C3 F3 78 */	mr r3, r30
/* 8022E00C  38 80 00 43 */	li r4, 0x43
/* 8022E010  38 A0 00 00 */	li r5, 0
/* 8022E014  48 00 0A D1 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022E018  38 60 00 01 */	li r3, 1
/* 8022E01C  48 00 00 F8 */	b lbl_8022E114
/* 8022E020  7F C3 F3 78 */	mr r3, r30
/* 8022E024  38 80 00 44 */	li r4, 0x44
/* 8022E028  38 A0 00 00 */	li r5, 0
/* 8022E02C  48 00 0A B9 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022E030  38 60 00 01 */	li r3, 1
/* 8022E034  48 00 00 E0 */	b lbl_8022E114
/* 8022E038  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8022E03C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8022E040  88 03 01 EB */	lbz r0, 0x1eb(r3)
/* 8022E044  28 00 00 00 */	cmplwi r0, 0
/* 8022E048  40 82 00 18 */	bne lbl_8022E060
/* 8022E04C  7F C3 F3 78 */	mr r3, r30
/* 8022E050  38 80 00 09 */	li r4, 9
/* 8022E054  38 A0 00 00 */	li r5, 0
/* 8022E058  48 00 0A 8D */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022E05C  48 00 00 14 */	b lbl_8022E070
lbl_8022E060:
/* 8022E060  7F C3 F3 78 */	mr r3, r30
/* 8022E064  38 80 00 2C */	li r4, 0x2c
/* 8022E068  38 A0 00 00 */	li r5, 0
/* 8022E06C  48 00 0A 79 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
lbl_8022E070:
/* 8022E070  38 60 00 01 */	li r3, 1
/* 8022E074  48 00 00 A0 */	b lbl_8022E114
/* 8022E078  7F C3 F3 78 */	mr r3, r30
/* 8022E07C  38 80 00 45 */	li r4, 0x45
/* 8022E080  38 A0 00 00 */	li r5, 0
/* 8022E084  48 00 0A 61 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022E088  38 60 00 01 */	li r3, 1
/* 8022E08C  48 00 00 88 */	b lbl_8022E114
/* 8022E090  7F C3 F3 78 */	mr r3, r30
/* 8022E094  38 80 00 2D */	li r4, 0x2d
/* 8022E098  38 A0 00 00 */	li r5, 0
/* 8022E09C  48 00 0A 49 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022E0A0  38 60 00 01 */	li r3, 1
/* 8022E0A4  48 00 00 70 */	b lbl_8022E114
/* 8022E0A8  7F C3 F3 78 */	mr r3, r30
/* 8022E0AC  38 80 00 2C */	li r4, 0x2c
/* 8022E0B0  38 A0 00 00 */	li r5, 0
/* 8022E0B4  48 00 0A 31 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022E0B8  38 60 00 01 */	li r3, 1
/* 8022E0BC  48 00 00 58 */	b lbl_8022E114
/* 8022E0C0  7F C3 F3 78 */	mr r3, r30
/* 8022E0C4  38 80 00 3E */	li r4, 0x3e
/* 8022E0C8  38 A0 00 00 */	li r5, 0
/* 8022E0CC  48 00 0A 19 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022E0D0  38 60 00 01 */	li r3, 1
/* 8022E0D4  48 00 00 40 */	b lbl_8022E114
/* 8022E0D8  7F C3 F3 78 */	mr r3, r30
/* 8022E0DC  38 80 00 02 */	li r4, 2
/* 8022E0E0  38 A0 00 00 */	li r5, 0
/* 8022E0E4  48 00 0A 01 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022E0E8  38 60 00 01 */	li r3, 1
/* 8022E0EC  48 00 00 28 */	b lbl_8022E114
/* 8022E0F0  7F C3 F3 78 */	mr r3, r30
/* 8022E0F4  38 80 00 07 */	li r4, 7
/* 8022E0F8  38 A0 00 00 */	li r5, 0
/* 8022E0FC  48 00 09 E9 */	bl do_outfont__28jmessage_tRenderingProcessorFUcUl
/* 8022E100  38 60 00 01 */	li r3, 1
/* 8022E104  48 00 00 10 */	b lbl_8022E114
/* 8022E108  38 60 00 01 */	li r3, 1
/* 8022E10C  48 00 00 08 */	b lbl_8022E114
lbl_8022E110:
/* 8022E110  38 60 00 00 */	li r3, 0
lbl_8022E114:
/* 8022E114  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8022E118  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8022E11C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8022E120  7C 08 03 A6 */	mtlr r0
/* 8022E124  38 21 00 70 */	addi r1, r1, 0x70
/* 8022E128  4E 80 00 20 */	blr 
