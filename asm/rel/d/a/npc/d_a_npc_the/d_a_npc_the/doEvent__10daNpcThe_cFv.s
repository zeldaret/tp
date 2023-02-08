lbl_80AFA6CC:
/* 80AFA6CC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80AFA6D0  7C 08 02 A6 */	mflr r0
/* 80AFA6D4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80AFA6D8  39 61 00 70 */	addi r11, r1, 0x70
/* 80AFA6DC  4B 86 7A F9 */	bl _savegpr_27
/* 80AFA6E0  7C 7B 1B 78 */	mr r27, r3
/* 80AFA6E4  3C 60 80 B0 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80AFC1D0@ha */
/* 80AFA6E8  3B C3 C1 D0 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x80AFC1D0@l */
/* 80AFA6EC  3B 80 00 00 */	li r28, 0
/* 80AFA6F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AFA6F4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AFA6F8  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 80AFA6FC  28 00 00 00 */	cmplwi r0, 0
/* 80AFA700  41 82 06 AC */	beq lbl_80AFADAC
/* 80AFA704  3B BF 4F F8 */	addi r29, r31, 0x4ff8
/* 80AFA708  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80AFA70C  28 00 00 01 */	cmplwi r0, 1
/* 80AFA710  40 82 03 E0 */	bne lbl_80AFAAF0
/* 80AFA714  88 1B 09 F4 */	lbz r0, 0x9f4(r27)
/* 80AFA718  28 00 00 00 */	cmplwi r0, 0
/* 80AFA71C  41 82 00 AC */	beq lbl_80AFA7C8
/* 80AFA720  38 60 01 15 */	li r3, 0x115
/* 80AFA724  4B 65 AF 11 */	bl daNpcF_chkEvtBit__FUl
/* 80AFA728  2C 03 00 00 */	cmpwi r3, 0
/* 80AFA72C  41 82 00 10 */	beq lbl_80AFA73C
/* 80AFA730  38 00 00 02 */	li r0, 2
/* 80AFA734  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80AFA738  48 00 00 0C */	b lbl_80AFA744
lbl_80AFA73C:
/* 80AFA73C  38 00 00 01 */	li r0, 1
/* 80AFA740  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
lbl_80AFA744:
/* 80AFA744  A0 1B 09 E6 */	lhz r0, 0x9e6(r27)
/* 80AFA748  54 00 10 3A */	slwi r0, r0, 2
/* 80AFA74C  38 7E 01 C0 */	addi r3, r30, 0x1c0
/* 80AFA750  7C 03 00 2E */	lwzx r0, r3, r0
/* 80AFA754  54 00 10 3A */	slwi r0, r0, 2
/* 80AFA758  38 7E 01 B0 */	addi r3, r30, 0x1b0
/* 80AFA75C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80AFA760  90 1B 01 00 */	stw r0, 0x100(r27)
/* 80AFA764  7F A3 EB 78 */	mr r3, r29
/* 80AFA768  80 9B 01 00 */	lwz r4, 0x100(r27)
/* 80AFA76C  4B 54 C0 95 */	bl setObjectArchive__16dEvent_manager_cFPc
/* 80AFA770  7F A3 EB 78 */	mr r3, r29
/* 80AFA774  7F 64 DB 78 */	mr r4, r27
/* 80AFA778  A0 1B 09 E6 */	lhz r0, 0x9e6(r27)
/* 80AFA77C  54 00 10 3A */	slwi r0, r0, 2
/* 80AFA780  38 BE 01 D0 */	addi r5, r30, 0x1d0
/* 80AFA784  7C A5 00 2E */	lwzx r5, r5, r0
/* 80AFA788  38 C0 00 FF */	li r6, 0xff
/* 80AFA78C  4B 54 CF CD */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80AFA790  B0 7B 09 D4 */	sth r3, 0x9d4(r27)
/* 80AFA794  A8 1B 09 D4 */	lha r0, 0x9d4(r27)
/* 80AFA798  2C 00 FF FF */	cmpwi r0, -1
/* 80AFA79C  41 82 03 4C */	beq lbl_80AFAAE8
/* 80AFA7A0  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80AFA7A4  7F 64 DB 78 */	mr r4, r27
/* 80AFA7A8  4B 54 7D 71 */	bl reset__14dEvt_control_cFPv
/* 80AFA7AC  7F 63 DB 78 */	mr r3, r27
/* 80AFA7B0  A8 9B 09 D4 */	lha r4, 0x9d4(r27)
/* 80AFA7B4  38 A0 00 01 */	li r5, 1
/* 80AFA7B8  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80AFA7BC  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80AFA7C0  4B 52 0E 25 */	bl fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80AFA7C4  48 00 03 24 */	b lbl_80AFAAE8
lbl_80AFA7C8:
/* 80AFA7C8  3B 9F 4E C8 */	addi r28, r31, 0x4ec8
/* 80AFA7CC  38 00 00 00 */	li r0, 0
/* 80AFA7D0  88 7F 4F B5 */	lbz r3, 0x4fb5(r31)
/* 80AFA7D4  28 03 00 01 */	cmplwi r3, 1
/* 80AFA7D8  41 82 00 0C */	beq lbl_80AFA7E4
/* 80AFA7DC  28 03 00 02 */	cmplwi r3, 2
/* 80AFA7E0  40 82 00 08 */	bne lbl_80AFA7E8
lbl_80AFA7E4:
/* 80AFA7E4  38 00 00 01 */	li r0, 1
lbl_80AFA7E8:
/* 80AFA7E8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AFA7EC  41 82 02 30 */	beq lbl_80AFAA1C
/* 80AFA7F0  7F A3 EB 78 */	mr r3, r29
/* 80AFA7F4  4B 54 DF FD */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80AFA7F8  2C 03 00 00 */	cmpwi r3, 0
/* 80AFA7FC  40 82 00 0C */	bne lbl_80AFA808
/* 80AFA800  38 60 00 01 */	li r3, 1
/* 80AFA804  48 00 05 D0 */	b lbl_80AFADD4
lbl_80AFA808:
/* 80AFA808  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AFA80C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AFA810  88 03 4F B6 */	lbz r0, 0x4fb6(r3)
/* 80AFA814  28 00 00 80 */	cmplwi r0, 0x80
/* 80AFA818  40 82 00 DC */	bne lbl_80AFA8F4
/* 80AFA81C  38 00 04 30 */	li r0, 0x430
/* 80AFA820  90 1B 0E 14 */	stw r0, 0xe14(r27)
/* 80AFA824  80 7E 03 1C */	lwz r3, 0x31c(r30)
/* 80AFA828  80 1E 03 20 */	lwz r0, 0x320(r30)
/* 80AFA82C  90 61 00 4C */	stw r3, 0x4c(r1)
/* 80AFA830  90 01 00 50 */	stw r0, 0x50(r1)
/* 80AFA834  80 1E 03 24 */	lwz r0, 0x324(r30)
/* 80AFA838  90 01 00 54 */	stw r0, 0x54(r1)
/* 80AFA83C  38 7B 0D DC */	addi r3, r27, 0xddc
/* 80AFA840  38 81 00 4C */	addi r4, r1, 0x4c
/* 80AFA844  4B 86 78 05 */	bl __ptmf_cmpr
/* 80AFA848  2C 03 00 00 */	cmpwi r3, 0
/* 80AFA84C  40 82 00 1C */	bne lbl_80AFA868
/* 80AFA850  7F 63 DB 78 */	mr r3, r27
/* 80AFA854  38 80 00 00 */	li r4, 0
/* 80AFA858  39 9B 0D DC */	addi r12, r27, 0xddc
/* 80AFA85C  4B 86 78 29 */	bl __ptmf_scall
/* 80AFA860  60 00 00 00 */	nop 
/* 80AFA864  48 00 02 84 */	b lbl_80AFAAE8
lbl_80AFA868:
/* 80AFA868  80 7E 03 28 */	lwz r3, 0x328(r30)
/* 80AFA86C  80 1E 03 2C */	lwz r0, 0x32c(r30)
/* 80AFA870  90 61 00 40 */	stw r3, 0x40(r1)
/* 80AFA874  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AFA878  80 1E 03 30 */	lwz r0, 0x330(r30)
/* 80AFA87C  90 01 00 48 */	stw r0, 0x48(r1)
/* 80AFA880  38 7B 0D DC */	addi r3, r27, 0xddc
/* 80AFA884  4B 86 77 95 */	bl __ptmf_test
/* 80AFA888  2C 03 00 00 */	cmpwi r3, 0
/* 80AFA88C  41 82 00 20 */	beq lbl_80AFA8AC
/* 80AFA890  38 00 00 03 */	li r0, 3
/* 80AFA894  B0 1B 0E 1A */	sth r0, 0xe1a(r27)
/* 80AFA898  7F 63 DB 78 */	mr r3, r27
/* 80AFA89C  38 80 00 00 */	li r4, 0
/* 80AFA8A0  39 9B 0D DC */	addi r12, r27, 0xddc
/* 80AFA8A4  4B 86 77 E1 */	bl __ptmf_scall
/* 80AFA8A8  60 00 00 00 */	nop 
lbl_80AFA8AC:
/* 80AFA8AC  38 61 00 40 */	addi r3, r1, 0x40
/* 80AFA8B0  4B 86 77 69 */	bl __ptmf_test
/* 80AFA8B4  2C 03 00 00 */	cmpwi r3, 0
/* 80AFA8B8  41 82 02 30 */	beq lbl_80AFAAE8
/* 80AFA8BC  80 61 00 40 */	lwz r3, 0x40(r1)
/* 80AFA8C0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AFA8C4  90 7B 0D DC */	stw r3, 0xddc(r27)
/* 80AFA8C8  90 1B 0D E0 */	stw r0, 0xde0(r27)
/* 80AFA8CC  80 01 00 48 */	lwz r0, 0x48(r1)
/* 80AFA8D0  90 1B 0D E4 */	stw r0, 0xde4(r27)
/* 80AFA8D4  38 00 00 00 */	li r0, 0
/* 80AFA8D8  B0 1B 0E 1A */	sth r0, 0xe1a(r27)
/* 80AFA8DC  7F 63 DB 78 */	mr r3, r27
/* 80AFA8E0  38 80 00 00 */	li r4, 0
/* 80AFA8E4  39 9B 0D DC */	addi r12, r27, 0xddc
/* 80AFA8E8  4B 86 77 9D */	bl __ptmf_scall
/* 80AFA8EC  60 00 00 00 */	nop 
/* 80AFA8F0  48 00 01 F8 */	b lbl_80AFAAE8
lbl_80AFA8F4:
/* 80AFA8F4  28 00 00 81 */	cmplwi r0, 0x81
/* 80AFA8F8  40 82 00 DC */	bne lbl_80AFA9D4
/* 80AFA8FC  38 00 04 31 */	li r0, 0x431
/* 80AFA900  90 1B 0E 14 */	stw r0, 0xe14(r27)
/* 80AFA904  80 7E 03 34 */	lwz r3, 0x334(r30)
/* 80AFA908  80 1E 03 38 */	lwz r0, 0x338(r30)
/* 80AFA90C  90 61 00 34 */	stw r3, 0x34(r1)
/* 80AFA910  90 01 00 38 */	stw r0, 0x38(r1)
/* 80AFA914  80 1E 03 3C */	lwz r0, 0x33c(r30)
/* 80AFA918  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80AFA91C  38 7B 0D DC */	addi r3, r27, 0xddc
/* 80AFA920  38 81 00 34 */	addi r4, r1, 0x34
/* 80AFA924  4B 86 77 25 */	bl __ptmf_cmpr
/* 80AFA928  2C 03 00 00 */	cmpwi r3, 0
/* 80AFA92C  40 82 00 1C */	bne lbl_80AFA948
/* 80AFA930  7F 63 DB 78 */	mr r3, r27
/* 80AFA934  38 80 00 00 */	li r4, 0
/* 80AFA938  39 9B 0D DC */	addi r12, r27, 0xddc
/* 80AFA93C  4B 86 77 49 */	bl __ptmf_scall
/* 80AFA940  60 00 00 00 */	nop 
/* 80AFA944  48 00 01 A4 */	b lbl_80AFAAE8
lbl_80AFA948:
/* 80AFA948  80 7E 03 40 */	lwz r3, 0x340(r30)
/* 80AFA94C  80 1E 03 44 */	lwz r0, 0x344(r30)
/* 80AFA950  90 61 00 28 */	stw r3, 0x28(r1)
/* 80AFA954  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80AFA958  80 1E 03 48 */	lwz r0, 0x348(r30)
/* 80AFA95C  90 01 00 30 */	stw r0, 0x30(r1)
/* 80AFA960  38 7B 0D DC */	addi r3, r27, 0xddc
/* 80AFA964  4B 86 76 B5 */	bl __ptmf_test
/* 80AFA968  2C 03 00 00 */	cmpwi r3, 0
/* 80AFA96C  41 82 00 20 */	beq lbl_80AFA98C
/* 80AFA970  38 00 00 03 */	li r0, 3
/* 80AFA974  B0 1B 0E 1A */	sth r0, 0xe1a(r27)
/* 80AFA978  7F 63 DB 78 */	mr r3, r27
/* 80AFA97C  38 80 00 00 */	li r4, 0
/* 80AFA980  39 9B 0D DC */	addi r12, r27, 0xddc
/* 80AFA984  4B 86 77 01 */	bl __ptmf_scall
/* 80AFA988  60 00 00 00 */	nop 
lbl_80AFA98C:
/* 80AFA98C  38 61 00 28 */	addi r3, r1, 0x28
/* 80AFA990  4B 86 76 89 */	bl __ptmf_test
/* 80AFA994  2C 03 00 00 */	cmpwi r3, 0
/* 80AFA998  41 82 01 50 */	beq lbl_80AFAAE8
/* 80AFA99C  80 61 00 28 */	lwz r3, 0x28(r1)
/* 80AFA9A0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80AFA9A4  90 7B 0D DC */	stw r3, 0xddc(r27)
/* 80AFA9A8  90 1B 0D E0 */	stw r0, 0xde0(r27)
/* 80AFA9AC  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80AFA9B0  90 1B 0D E4 */	stw r0, 0xde4(r27)
/* 80AFA9B4  38 00 00 00 */	li r0, 0
/* 80AFA9B8  B0 1B 0E 1A */	sth r0, 0xe1a(r27)
/* 80AFA9BC  7F 63 DB 78 */	mr r3, r27
/* 80AFA9C0  38 80 00 00 */	li r4, 0
/* 80AFA9C4  39 9B 0D DC */	addi r12, r27, 0xddc
/* 80AFA9C8  4B 86 76 BD */	bl __ptmf_scall
/* 80AFA9CC  60 00 00 00 */	nop 
/* 80AFA9D0  48 00 01 18 */	b lbl_80AFAAE8
lbl_80AFA9D4:
/* 80AFA9D4  7F A3 EB 78 */	mr r3, r29
/* 80AFA9D8  7F 64 DB 78 */	mr r4, r27
/* 80AFA9DC  3C A0 80 B0 */	lis r5, d_a_npc_the__stringBase0@ha /* 0x80AFC158@ha */
/* 80AFA9E0  38 A5 C1 58 */	addi r5, r5, d_a_npc_the__stringBase0@l /* 0x80AFC158@l */
/* 80AFA9E4  38 A5 00 6C */	addi r5, r5, 0x6c
/* 80AFA9E8  38 C0 00 FF */	li r6, 0xff
/* 80AFA9EC  4B 54 CD 6D */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80AFA9F0  7C 7D 1B 78 */	mr r29, r3
/* 80AFA9F4  7F 83 E3 78 */	mr r3, r28
/* 80AFA9F8  7F 64 DB 78 */	mr r4, r27
/* 80AFA9FC  4B 54 7B 1D */	bl reset__14dEvt_control_cFPv
/* 80AFAA00  7F 63 DB 78 */	mr r3, r27
/* 80AFAA04  7F A4 EB 78 */	mr r4, r29
/* 80AFAA08  38 A0 00 01 */	li r5, 1
/* 80AFAA0C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80AFAA10  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80AFAA14  4B 52 0B D1 */	bl fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80AFAA18  48 00 00 D0 */	b lbl_80AFAAE8
lbl_80AFAA1C:
/* 80AFAA1C  80 7E 03 4C */	lwz r3, 0x34c(r30)
/* 80AFAA20  80 1E 03 50 */	lwz r0, 0x350(r30)
/* 80AFAA24  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80AFAA28  90 01 00 20 */	stw r0, 0x20(r1)
/* 80AFAA2C  80 1E 03 54 */	lwz r0, 0x354(r30)
/* 80AFAA30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AFAA34  38 7B 0D DC */	addi r3, r27, 0xddc
/* 80AFAA38  38 81 00 1C */	addi r4, r1, 0x1c
/* 80AFAA3C  4B 86 76 0D */	bl __ptmf_cmpr
/* 80AFAA40  2C 03 00 00 */	cmpwi r3, 0
/* 80AFAA44  40 82 00 1C */	bne lbl_80AFAA60
/* 80AFAA48  7F 63 DB 78 */	mr r3, r27
/* 80AFAA4C  38 80 00 00 */	li r4, 0
/* 80AFAA50  39 9B 0D DC */	addi r12, r27, 0xddc
/* 80AFAA54  4B 86 76 31 */	bl __ptmf_scall
/* 80AFAA58  60 00 00 00 */	nop 
/* 80AFAA5C  48 00 00 8C */	b lbl_80AFAAE8
lbl_80AFAA60:
/* 80AFAA60  80 7E 03 58 */	lwz r3, 0x358(r30)
/* 80AFAA64  80 1E 03 5C */	lwz r0, 0x35c(r30)
/* 80AFAA68  90 61 00 10 */	stw r3, 0x10(r1)
/* 80AFAA6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFAA70  80 1E 03 60 */	lwz r0, 0x360(r30)
/* 80AFAA74  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AFAA78  38 7B 0D DC */	addi r3, r27, 0xddc
/* 80AFAA7C  4B 86 75 9D */	bl __ptmf_test
/* 80AFAA80  2C 03 00 00 */	cmpwi r3, 0
/* 80AFAA84  41 82 00 20 */	beq lbl_80AFAAA4
/* 80AFAA88  38 00 00 03 */	li r0, 3
/* 80AFAA8C  B0 1B 0E 1A */	sth r0, 0xe1a(r27)
/* 80AFAA90  7F 63 DB 78 */	mr r3, r27
/* 80AFAA94  38 80 00 00 */	li r4, 0
/* 80AFAA98  39 9B 0D DC */	addi r12, r27, 0xddc
/* 80AFAA9C  4B 86 75 E9 */	bl __ptmf_scall
/* 80AFAAA0  60 00 00 00 */	nop 
lbl_80AFAAA4:
/* 80AFAAA4  38 61 00 10 */	addi r3, r1, 0x10
/* 80AFAAA8  4B 86 75 71 */	bl __ptmf_test
/* 80AFAAAC  2C 03 00 00 */	cmpwi r3, 0
/* 80AFAAB0  41 82 00 38 */	beq lbl_80AFAAE8
/* 80AFAAB4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80AFAAB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFAABC  90 7B 0D DC */	stw r3, 0xddc(r27)
/* 80AFAAC0  90 1B 0D E0 */	stw r0, 0xde0(r27)
/* 80AFAAC4  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80AFAAC8  90 1B 0D E4 */	stw r0, 0xde4(r27)
/* 80AFAACC  38 00 00 00 */	li r0, 0
/* 80AFAAD0  B0 1B 0E 1A */	sth r0, 0xe1a(r27)
/* 80AFAAD4  7F 63 DB 78 */	mr r3, r27
/* 80AFAAD8  38 80 00 00 */	li r4, 0
/* 80AFAADC  39 9B 0D DC */	addi r12, r27, 0xddc
/* 80AFAAE0  4B 86 75 A5 */	bl __ptmf_scall
/* 80AFAAE4  60 00 00 00 */	nop 
lbl_80AFAAE8:
/* 80AFAAE8  3B 80 00 01 */	li r28, 1
/* 80AFAAEC  48 00 01 00 */	b lbl_80AFABEC
lbl_80AFAAF0:
/* 80AFAAF0  7F A3 EB 78 */	mr r3, r29
/* 80AFAAF4  80 9E 01 E0 */	lwz r4, 0x1e0(r30)
/* 80AFAAF8  7F 65 DB 78 */	mr r5, r27
/* 80AFAAFC  38 C0 FF FF */	li r6, -1
/* 80AFAB00  4B 54 D0 1D */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80AFAB04  2C 03 FF FF */	cmpwi r3, -1
/* 80AFAB08  41 82 00 A4 */	beq lbl_80AFABAC
/* 80AFAB0C  7C 7C 1B 78 */	mr r28, r3
/* 80AFAB10  93 9B 09 2C */	stw r28, 0x92c(r27)
/* 80AFAB14  7F A3 EB 78 */	mr r3, r29
/* 80AFAB18  7F 84 E3 78 */	mr r4, r28
/* 80AFAB1C  38 BE 01 E4 */	addi r5, r30, 0x1e4
/* 80AFAB20  38 C0 00 04 */	li r6, 4
/* 80AFAB24  38 E0 00 00 */	li r7, 0
/* 80AFAB28  39 00 00 00 */	li r8, 0
/* 80AFAB2C  4B 54 D2 E5 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80AFAB30  7C 60 1B 79 */	or. r0, r3, r3
/* 80AFAB34  40 81 00 40 */	ble lbl_80AFAB74
/* 80AFAB38  2C 00 00 04 */	cmpwi r0, 4
/* 80AFAB3C  40 80 00 38 */	bge lbl_80AFAB74
/* 80AFAB40  7F 63 DB 78 */	mr r3, r27
/* 80AFAB44  7F 84 E3 78 */	mr r4, r28
/* 80AFAB48  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80AFAB4C  39 9E 02 18 */	addi r12, r30, 0x218
/* 80AFAB50  7D 8C 02 14 */	add r12, r12, r0
/* 80AFAB54  4B 86 75 31 */	bl __ptmf_scall
/* 80AFAB58  60 00 00 00 */	nop 
/* 80AFAB5C  2C 03 00 00 */	cmpwi r3, 0
/* 80AFAB60  41 82 00 48 */	beq lbl_80AFABA8
/* 80AFAB64  7F A3 EB 78 */	mr r3, r29
/* 80AFAB68  7F 84 E3 78 */	mr r4, r28
/* 80AFAB6C  4B 54 D6 11 */	bl cutEnd__16dEvent_manager_cFi
/* 80AFAB70  48 00 00 38 */	b lbl_80AFABA8
lbl_80AFAB74:
/* 80AFAB74  7F 63 DB 78 */	mr r3, r27
/* 80AFAB78  7F 84 E3 78 */	mr r4, r28
/* 80AFAB7C  A0 1B 09 E6 */	lhz r0, 0x9e6(r27)
/* 80AFAB80  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80AFAB84  39 9E 02 18 */	addi r12, r30, 0x218
/* 80AFAB88  7D 8C 02 14 */	add r12, r12, r0
/* 80AFAB8C  4B 86 74 F9 */	bl __ptmf_scall
/* 80AFAB90  60 00 00 00 */	nop 
/* 80AFAB94  2C 03 00 00 */	cmpwi r3, 0
/* 80AFAB98  41 82 00 10 */	beq lbl_80AFABA8
/* 80AFAB9C  7F A3 EB 78 */	mr r3, r29
/* 80AFABA0  7F 84 E3 78 */	mr r4, r28
/* 80AFABA4  4B 54 D5 D9 */	bl cutEnd__16dEvent_manager_cFi
lbl_80AFABA8:
/* 80AFABA8  3B 80 00 01 */	li r28, 1
lbl_80AFABAC:
/* 80AFABAC  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80AFABB0  28 00 00 02 */	cmplwi r0, 2
/* 80AFABB4  40 82 00 38 */	bne lbl_80AFABEC
/* 80AFABB8  A8 9B 09 D4 */	lha r4, 0x9d4(r27)
/* 80AFABBC  2C 04 FF FF */	cmpwi r4, -1
/* 80AFABC0  41 82 00 2C */	beq lbl_80AFABEC
/* 80AFABC4  7F A3 EB 78 */	mr r3, r29
/* 80AFABC8  4B 54 CE B1 */	bl endCheck__16dEvent_manager_cFs
/* 80AFABCC  2C 03 00 00 */	cmpwi r3, 0
/* 80AFABD0  41 82 00 1C */	beq lbl_80AFABEC
/* 80AFABD4  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80AFABD8  4B 54 78 91 */	bl reset__14dEvt_control_cFv
/* 80AFABDC  38 00 00 00 */	li r0, 0
/* 80AFABE0  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80AFABE4  38 00 FF FF */	li r0, -1
/* 80AFABE8  B0 1B 09 D4 */	sth r0, 0x9d4(r27)
lbl_80AFABEC:
/* 80AFABEC  83 BB 09 50 */	lwz r29, 0x950(r27)
/* 80AFABF0  7F 63 DB 78 */	mr r3, r27
/* 80AFABF4  38 81 00 0C */	addi r4, r1, 0xc
/* 80AFABF8  38 A1 00 08 */	addi r5, r1, 8
/* 80AFABFC  7F 66 DB 78 */	mr r6, r27
/* 80AFAC00  38 E0 00 00 */	li r7, 0
/* 80AFAC04  4B 65 8B 15 */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80AFAC08  2C 03 00 00 */	cmpwi r3, 0
/* 80AFAC0C  41 82 00 58 */	beq lbl_80AFAC64
/* 80AFAC10  88 1B 09 EB */	lbz r0, 0x9eb(r27)
/* 80AFAC14  28 00 00 00 */	cmplwi r0, 0
/* 80AFAC18  40 82 01 B8 */	bne lbl_80AFADD0
/* 80AFAC1C  7F 63 DB 78 */	mr r3, r27
/* 80AFAC20  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80AFAC24  3C A0 80 B0 */	lis r5, lit_4781@ha /* 0x80AFC120@ha */
/* 80AFAC28  C0 25 C1 20 */	lfs f1, lit_4781@l(r5)  /* 0x80AFC120@l */
/* 80AFAC2C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80AFAC30  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AFAC34  7D 89 03 A6 */	mtctr r12
/* 80AFAC38  4E 80 04 21 */	bctrl 
/* 80AFAC3C  7F 63 DB 78 */	mr r3, r27
/* 80AFAC40  80 81 00 08 */	lwz r4, 8(r1)
/* 80AFAC44  3C A0 80 B0 */	lis r5, lit_4781@ha /* 0x80AFC120@ha */
/* 80AFAC48  C0 25 C1 20 */	lfs f1, lit_4781@l(r5)  /* 0x80AFC120@l */
/* 80AFAC4C  38 A0 00 00 */	li r5, 0
/* 80AFAC50  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80AFAC54  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AFAC58  7D 89 03 A6 */	mtctr r12
/* 80AFAC5C  4E 80 04 21 */	bctrl 
/* 80AFAC60  48 00 01 70 */	b lbl_80AFADD0
lbl_80AFAC64:
/* 80AFAC64  2C 1D 00 00 */	cmpwi r29, 0
/* 80AFAC68  41 82 01 68 */	beq lbl_80AFADD0
/* 80AFAC6C  88 1B 09 EB */	lbz r0, 0x9eb(r27)
/* 80AFAC70  28 00 00 00 */	cmplwi r0, 0
/* 80AFAC74  40 82 01 5C */	bne lbl_80AFADD0
/* 80AFAC78  A8 1B 09 DE */	lha r0, 0x9de(r27)
/* 80AFAC7C  2C 00 00 04 */	cmpwi r0, 4
/* 80AFAC80  41 82 00 9C */	beq lbl_80AFAD1C
/* 80AFAC84  40 80 00 1C */	bge lbl_80AFACA0
/* 80AFAC88  2C 00 00 02 */	cmpwi r0, 2
/* 80AFAC8C  41 82 00 48 */	beq lbl_80AFACD4
/* 80AFAC90  40 80 00 68 */	bge lbl_80AFACF8
/* 80AFAC94  2C 00 00 01 */	cmpwi r0, 1
/* 80AFAC98  40 80 00 18 */	bge lbl_80AFACB0
/* 80AFAC9C  48 00 00 EC */	b lbl_80AFAD88
lbl_80AFACA0:
/* 80AFACA0  2C 00 00 06 */	cmpwi r0, 6
/* 80AFACA4  41 82 00 C0 */	beq lbl_80AFAD64
/* 80AFACA8  40 80 00 E0 */	bge lbl_80AFAD88
/* 80AFACAC  48 00 00 94 */	b lbl_80AFAD40
lbl_80AFACB0:
/* 80AFACB0  7F 63 DB 78 */	mr r3, r27
/* 80AFACB4  38 80 00 08 */	li r4, 8
/* 80AFACB8  3C A0 80 B0 */	lis r5, lit_4781@ha /* 0x80AFC120@ha */
/* 80AFACBC  C0 25 C1 20 */	lfs f1, lit_4781@l(r5)  /* 0x80AFC120@l */
/* 80AFACC0  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80AFACC4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AFACC8  7D 89 03 A6 */	mtctr r12
/* 80AFACCC  4E 80 04 21 */	bctrl 
/* 80AFACD0  48 00 01 00 */	b lbl_80AFADD0
lbl_80AFACD4:
/* 80AFACD4  7F 63 DB 78 */	mr r3, r27
/* 80AFACD8  38 80 00 09 */	li r4, 9
/* 80AFACDC  3C A0 80 B0 */	lis r5, lit_4781@ha /* 0x80AFC120@ha */
/* 80AFACE0  C0 25 C1 20 */	lfs f1, lit_4781@l(r5)  /* 0x80AFC120@l */
/* 80AFACE4  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80AFACE8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AFACEC  7D 89 03 A6 */	mtctr r12
/* 80AFACF0  4E 80 04 21 */	bctrl 
/* 80AFACF4  48 00 00 DC */	b lbl_80AFADD0
lbl_80AFACF8:
/* 80AFACF8  7F 63 DB 78 */	mr r3, r27
/* 80AFACFC  38 80 00 0A */	li r4, 0xa
/* 80AFAD00  3C A0 80 B0 */	lis r5, lit_4781@ha /* 0x80AFC120@ha */
/* 80AFAD04  C0 25 C1 20 */	lfs f1, lit_4781@l(r5)  /* 0x80AFC120@l */
/* 80AFAD08  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80AFAD0C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AFAD10  7D 89 03 A6 */	mtctr r12
/* 80AFAD14  4E 80 04 21 */	bctrl 
/* 80AFAD18  48 00 00 B8 */	b lbl_80AFADD0
lbl_80AFAD1C:
/* 80AFAD1C  7F 63 DB 78 */	mr r3, r27
/* 80AFAD20  38 80 00 0B */	li r4, 0xb
/* 80AFAD24  3C A0 80 B0 */	lis r5, lit_4781@ha /* 0x80AFC120@ha */
/* 80AFAD28  C0 25 C1 20 */	lfs f1, lit_4781@l(r5)  /* 0x80AFC120@l */
/* 80AFAD2C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80AFAD30  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AFAD34  7D 89 03 A6 */	mtctr r12
/* 80AFAD38  4E 80 04 21 */	bctrl 
/* 80AFAD3C  48 00 00 94 */	b lbl_80AFADD0
lbl_80AFAD40:
/* 80AFAD40  7F 63 DB 78 */	mr r3, r27
/* 80AFAD44  38 80 00 0C */	li r4, 0xc
/* 80AFAD48  3C A0 80 B0 */	lis r5, lit_4781@ha /* 0x80AFC120@ha */
/* 80AFAD4C  C0 25 C1 20 */	lfs f1, lit_4781@l(r5)  /* 0x80AFC120@l */
/* 80AFAD50  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80AFAD54  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AFAD58  7D 89 03 A6 */	mtctr r12
/* 80AFAD5C  4E 80 04 21 */	bctrl 
/* 80AFAD60  48 00 00 70 */	b lbl_80AFADD0
lbl_80AFAD64:
/* 80AFAD64  7F 63 DB 78 */	mr r3, r27
/* 80AFAD68  38 80 00 07 */	li r4, 7
/* 80AFAD6C  3C A0 80 B0 */	lis r5, lit_4781@ha /* 0x80AFC120@ha */
/* 80AFAD70  C0 25 C1 20 */	lfs f1, lit_4781@l(r5)  /* 0x80AFC120@l */
/* 80AFAD74  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80AFAD78  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AFAD7C  7D 89 03 A6 */	mtctr r12
/* 80AFAD80  4E 80 04 21 */	bctrl 
/* 80AFAD84  48 00 00 4C */	b lbl_80AFADD0
lbl_80AFAD88:
/* 80AFAD88  7F 63 DB 78 */	mr r3, r27
/* 80AFAD8C  38 80 00 0D */	li r4, 0xd
/* 80AFAD90  3C A0 80 B0 */	lis r5, lit_4781@ha /* 0x80AFC120@ha */
/* 80AFAD94  C0 25 C1 20 */	lfs f1, lit_4781@l(r5)  /* 0x80AFC120@l */
/* 80AFAD98  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80AFAD9C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AFADA0  7D 89 03 A6 */	mtctr r12
/* 80AFADA4  4E 80 04 21 */	bctrl 
/* 80AFADA8  48 00 00 28 */	b lbl_80AFADD0
lbl_80AFADAC:
/* 80AFADAC  38 00 00 00 */	li r0, 0
/* 80AFADB0  90 1B 09 50 */	stw r0, 0x950(r27)
/* 80AFADB4  80 1B 09 2C */	lwz r0, 0x92c(r27)
/* 80AFADB8  2C 00 FF FF */	cmpwi r0, -1
/* 80AFADBC  41 82 00 14 */	beq lbl_80AFADD0
/* 80AFADC0  38 00 00 01 */	li r0, 1
/* 80AFADC4  B0 1B 0E 1A */	sth r0, 0xe1a(r27)
/* 80AFADC8  38 00 FF FF */	li r0, -1
/* 80AFADCC  90 1B 09 2C */	stw r0, 0x92c(r27)
lbl_80AFADD0:
/* 80AFADD0  7F 83 E3 78 */	mr r3, r28
lbl_80AFADD4:
/* 80AFADD4  39 61 00 70 */	addi r11, r1, 0x70
/* 80AFADD8  4B 86 74 49 */	bl _restgpr_27
/* 80AFADDC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80AFADE0  7C 08 03 A6 */	mtlr r0
/* 80AFADE4  38 21 00 70 */	addi r1, r1, 0x70
/* 80AFADE8  4E 80 00 20 */	blr 
