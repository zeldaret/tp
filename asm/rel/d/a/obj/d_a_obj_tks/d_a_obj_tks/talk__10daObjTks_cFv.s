lbl_80D106F4:
/* 80D106F4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D106F8  7C 08 02 A6 */	mflr r0
/* 80D106FC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D10700  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80D10704  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80D10708  7C 7F 1B 78 */	mr r31, r3
/* 80D1070C  A0 03 0D DE */	lhz r0, 0xdde(r3)
/* 80D10710  2C 00 00 02 */	cmpwi r0, 2
/* 80D10714  41 82 00 90 */	beq lbl_80D107A4
/* 80D10718  40 80 03 50 */	bge lbl_80D10A68
/* 80D1071C  2C 00 00 00 */	cmpwi r0, 0
/* 80D10720  41 82 00 0C */	beq lbl_80D1072C
/* 80D10724  48 00 03 44 */	b lbl_80D10A68
/* 80D10728  48 00 03 40 */	b lbl_80D10A68
lbl_80D1072C:
/* 80D1072C  38 80 00 01 */	li r4, 1
/* 80D10730  3C A0 80 D1 */	lis r5, lit_4324@ha /* 0x80D127D4@ha */
/* 80D10734  C0 25 27 D4 */	lfs f1, lit_4324@l(r5)  /* 0x80D127D4@l */
/* 80D10738  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80D1073C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80D10740  7D 89 03 A6 */	mtctr r12
/* 80D10744  4E 80 04 21 */	bctrl 
/* 80D10748  7F E3 FB 78 */	mr r3, r31
/* 80D1074C  38 80 00 00 */	li r4, 0
/* 80D10750  3C A0 80 D1 */	lis r5, lit_4324@ha /* 0x80D127D4@ha */
/* 80D10754  C0 25 27 D4 */	lfs f1, lit_4324@l(r5)  /* 0x80D127D4@l */
/* 80D10758  38 A0 00 00 */	li r5, 0
/* 80D1075C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80D10760  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80D10764  7D 89 03 A6 */	mtctr r12
/* 80D10768  4E 80 04 21 */	bctrl 
/* 80D1076C  A8 1F 0D DC */	lha r0, 0xddc(r31)
/* 80D10770  2C 00 00 03 */	cmpwi r0, 3
/* 80D10774  41 82 00 0C */	beq lbl_80D10780
/* 80D10778  38 00 00 03 */	li r0, 3
/* 80D1077C  B0 1F 0D DC */	sth r0, 0xddc(r31)
lbl_80D10780:
/* 80D10780  7F E3 FB 78 */	mr r3, r31
/* 80D10784  38 80 00 02 */	li r4, 2
/* 80D10788  38 A0 00 00 */	li r5, 0
/* 80D1078C  4B 44 35 91 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80D10790  38 00 00 00 */	li r0, 0
/* 80D10794  90 1F 09 50 */	stw r0, 0x950(r31)
/* 80D10798  38 00 00 02 */	li r0, 2
/* 80D1079C  B0 1F 0D DE */	sth r0, 0xdde(r31)
/* 80D107A0  48 00 02 C8 */	b lbl_80D10A68
lbl_80D107A4:
/* 80D107A4  88 1F 0D E1 */	lbz r0, 0xde1(r31)
/* 80D107A8  28 00 00 00 */	cmplwi r0, 0
/* 80D107AC  41 82 00 90 */	beq lbl_80D1083C
/* 80D107B0  80 7F 04 A4 */	lwz r3, 0x4a4(r31)
/* 80D107B4  3C 03 00 01 */	addis r0, r3, 1
/* 80D107B8  28 00 FF FF */	cmplwi r0, 0xffff
/* 80D107BC  40 82 00 80 */	bne lbl_80D1083C
/* 80D107C0  38 60 01 47 */	li r3, 0x147
/* 80D107C4  4B 44 4E 71 */	bl daNpcF_chkEvtBit__FUl
/* 80D107C8  2C 03 00 00 */	cmpwi r3, 0
/* 80D107CC  41 82 00 70 */	beq lbl_80D1083C
/* 80D107D0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D107D4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D107D8  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80D107DC  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80D107E0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D107E4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D107E8  3C 60 80 D1 */	lis r3, lit_4733@ha /* 0x80D12884@ha */
/* 80D107EC  C0 03 28 84 */	lfs f0, lit_4733@l(r3)  /* 0x80D12884@l */
/* 80D107F0  EC 01 00 2A */	fadds f0, f1, f0
/* 80D107F4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D107F8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D107FC  7C 07 07 74 */	extsb r7, r0
/* 80D10800  38 00 00 00 */	li r0, 0
/* 80D10804  90 01 00 08 */	stw r0, 8(r1)
/* 80D10808  38 60 02 76 */	li r3, 0x276
/* 80D1080C  28 1F 00 00 */	cmplwi r31, 0
/* 80D10810  41 82 00 0C */	beq lbl_80D1081C
/* 80D10814  80 9F 00 04 */	lwz r4, 4(r31)
/* 80D10818  48 00 00 08 */	b lbl_80D10820
lbl_80D1081C:
/* 80D1081C  38 80 FF FF */	li r4, -1
lbl_80D10820:
/* 80D10820  38 A0 00 01 */	li r5, 1
/* 80D10824  38 C1 00 30 */	addi r6, r1, 0x30
/* 80D10828  39 1F 08 F0 */	addi r8, r31, 0x8f0
/* 80D1082C  39 20 00 00 */	li r9, 0
/* 80D10830  39 40 FF FF */	li r10, -1
/* 80D10834  4B 30 96 BD */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80D10838  90 7F 04 A4 */	stw r3, 0x4a4(r31)
lbl_80D1083C:
/* 80D1083C  7F E3 FB 78 */	mr r3, r31
/* 80D10840  38 80 00 00 */	li r4, 0
/* 80D10844  38 A0 00 01 */	li r5, 1
/* 80D10848  38 C0 00 00 */	li r6, 0
/* 80D1084C  4B 44 35 39 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80D10850  2C 03 00 00 */	cmpwi r3, 0
/* 80D10854  41 82 01 74 */	beq lbl_80D109C8
/* 80D10858  A0 1F 0A 32 */	lhz r0, 0xa32(r31)
/* 80D1085C  7C 00 07 35 */	extsh. r0, r0
/* 80D10860  40 82 01 2C */	bne lbl_80D1098C
/* 80D10864  38 60 01 47 */	li r3, 0x147
/* 80D10868  4B 44 4D CD */	bl daNpcF_chkEvtBit__FUl
/* 80D1086C  2C 03 00 00 */	cmpwi r3, 0
/* 80D10870  41 82 00 90 */	beq lbl_80D10900
/* 80D10874  3C 60 80 D1 */	lis r3, lit_4691@ha /* 0x80D12974@ha */
/* 80D10878  38 83 29 74 */	addi r4, r3, lit_4691@l /* 0x80D12974@l */
/* 80D1087C  80 64 00 00 */	lwz r3, 0(r4)
/* 80D10880  80 04 00 04 */	lwz r0, 4(r4)
/* 80D10884  90 61 00 24 */	stw r3, 0x24(r1)
/* 80D10888  90 01 00 28 */	stw r0, 0x28(r1)
/* 80D1088C  80 04 00 08 */	lwz r0, 8(r4)
/* 80D10890  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80D10894  38 00 00 03 */	li r0, 3
/* 80D10898  B0 1F 0D DE */	sth r0, 0xdde(r31)
/* 80D1089C  38 7F 0D B8 */	addi r3, r31, 0xdb8
/* 80D108A0  4B 65 17 79 */	bl __ptmf_test
/* 80D108A4  2C 03 00 00 */	cmpwi r3, 0
/* 80D108A8  41 82 00 14 */	beq lbl_80D108BC
/* 80D108AC  7F E3 FB 78 */	mr r3, r31
/* 80D108B0  39 9F 0D B8 */	addi r12, r31, 0xdb8
/* 80D108B4  4B 65 17 D1 */	bl __ptmf_scall
/* 80D108B8  60 00 00 00 */	nop 
lbl_80D108BC:
/* 80D108BC  38 00 00 00 */	li r0, 0
/* 80D108C0  B0 1F 0D DE */	sth r0, 0xdde(r31)
/* 80D108C4  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80D108C8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80D108CC  90 7F 0D B8 */	stw r3, 0xdb8(r31)
/* 80D108D0  90 1F 0D BC */	stw r0, 0xdbc(r31)
/* 80D108D4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80D108D8  90 1F 0D C0 */	stw r0, 0xdc0(r31)
/* 80D108DC  38 7F 0D B8 */	addi r3, r31, 0xdb8
/* 80D108E0  4B 65 17 39 */	bl __ptmf_test
/* 80D108E4  2C 03 00 00 */	cmpwi r3, 0
/* 80D108E8  41 82 01 80 */	beq lbl_80D10A68
/* 80D108EC  7F E3 FB 78 */	mr r3, r31
/* 80D108F0  39 9F 0D B8 */	addi r12, r31, 0xdb8
/* 80D108F4  4B 65 17 91 */	bl __ptmf_scall
/* 80D108F8  60 00 00 00 */	nop 
/* 80D108FC  48 00 01 6C */	b lbl_80D10A68
lbl_80D10900:
/* 80D10900  3C 60 80 D1 */	lis r3, lit_4694@ha /* 0x80D12980@ha */
/* 80D10904  38 83 29 80 */	addi r4, r3, lit_4694@l /* 0x80D12980@l */
/* 80D10908  80 64 00 00 */	lwz r3, 0(r4)
/* 80D1090C  80 04 00 04 */	lwz r0, 4(r4)
/* 80D10910  90 61 00 18 */	stw r3, 0x18(r1)
/* 80D10914  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80D10918  80 04 00 08 */	lwz r0, 8(r4)
/* 80D1091C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80D10920  38 00 00 03 */	li r0, 3
/* 80D10924  B0 1F 0D DE */	sth r0, 0xdde(r31)
/* 80D10928  38 7F 0D B8 */	addi r3, r31, 0xdb8
/* 80D1092C  4B 65 16 ED */	bl __ptmf_test
/* 80D10930  2C 03 00 00 */	cmpwi r3, 0
/* 80D10934  41 82 00 14 */	beq lbl_80D10948
/* 80D10938  7F E3 FB 78 */	mr r3, r31
/* 80D1093C  39 9F 0D B8 */	addi r12, r31, 0xdb8
/* 80D10940  4B 65 17 45 */	bl __ptmf_scall
/* 80D10944  60 00 00 00 */	nop 
lbl_80D10948:
/* 80D10948  38 00 00 00 */	li r0, 0
/* 80D1094C  B0 1F 0D DE */	sth r0, 0xdde(r31)
/* 80D10950  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80D10954  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80D10958  90 7F 0D B8 */	stw r3, 0xdb8(r31)
/* 80D1095C  90 1F 0D BC */	stw r0, 0xdbc(r31)
/* 80D10960  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80D10964  90 1F 0D C0 */	stw r0, 0xdc0(r31)
/* 80D10968  38 7F 0D B8 */	addi r3, r31, 0xdb8
/* 80D1096C  4B 65 16 AD */	bl __ptmf_test
/* 80D10970  2C 03 00 00 */	cmpwi r3, 0
/* 80D10974  41 82 00 F4 */	beq lbl_80D10A68
/* 80D10978  7F E3 FB 78 */	mr r3, r31
/* 80D1097C  39 9F 0D B8 */	addi r12, r31, 0xdb8
/* 80D10980  4B 65 17 05 */	bl __ptmf_scall
/* 80D10984  60 00 00 00 */	nop 
/* 80D10988  48 00 00 E0 */	b lbl_80D10A68
lbl_80D1098C:
/* 80D1098C  28 1F 00 00 */	cmplwi r31, 0
/* 80D10990  41 82 00 0C */	beq lbl_80D1099C
/* 80D10994  83 DF 00 04 */	lwz r30, 4(r31)
/* 80D10998  48 00 00 08 */	b lbl_80D109A0
lbl_80D1099C:
/* 80D1099C  3B C0 FF FF */	li r30, -1
lbl_80D109A0:
/* 80D109A0  4B 47 0C A1 */	bl dCam_getBody__Fv
/* 80D109A4  7F C4 F3 78 */	mr r4, r30
/* 80D109A8  4B 37 82 15 */	bl EndEventCamera__9dCamera_cFi
/* 80D109AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D109B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D109B4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80D109B8  4B 33 1A B1 */	bl reset__14dEvt_control_cFv
/* 80D109BC  7F E3 FB 78 */	mr r3, r31
/* 80D109C0  4B 30 92 BD */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80D109C4  48 00 00 A4 */	b lbl_80D10A68
lbl_80D109C8:
/* 80D109C8  83 DF 09 50 */	lwz r30, 0x950(r31)
/* 80D109CC  7F E3 FB 78 */	mr r3, r31
/* 80D109D0  38 81 00 14 */	addi r4, r1, 0x14
/* 80D109D4  38 A1 00 10 */	addi r5, r1, 0x10
/* 80D109D8  7F E6 FB 78 */	mr r6, r31
/* 80D109DC  38 E0 00 00 */	li r7, 0
/* 80D109E0  4B 44 2D 39 */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80D109E4  2C 03 00 00 */	cmpwi r3, 0
/* 80D109E8  41 82 00 4C */	beq lbl_80D10A34
/* 80D109EC  7F E3 FB 78 */	mr r3, r31
/* 80D109F0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80D109F4  3C A0 80 D1 */	lis r5, lit_4324@ha /* 0x80D127D4@ha */
/* 80D109F8  C0 25 27 D4 */	lfs f1, lit_4324@l(r5)  /* 0x80D127D4@l */
/* 80D109FC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80D10A00  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80D10A04  7D 89 03 A6 */	mtctr r12
/* 80D10A08  4E 80 04 21 */	bctrl 
/* 80D10A0C  7F E3 FB 78 */	mr r3, r31
/* 80D10A10  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80D10A14  3C A0 80 D1 */	lis r5, lit_4324@ha /* 0x80D127D4@ha */
/* 80D10A18  C0 25 27 D4 */	lfs f1, lit_4324@l(r5)  /* 0x80D127D4@l */
/* 80D10A1C  38 A0 00 00 */	li r5, 0
/* 80D10A20  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80D10A24  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80D10A28  7D 89 03 A6 */	mtctr r12
/* 80D10A2C  4E 80 04 21 */	bctrl 
/* 80D10A30  48 00 00 38 */	b lbl_80D10A68
lbl_80D10A34:
/* 80D10A34  2C 1E 00 00 */	cmpwi r30, 0
/* 80D10A38  41 82 00 30 */	beq lbl_80D10A68
/* 80D10A3C  80 1F 09 50 */	lwz r0, 0x950(r31)
/* 80D10A40  2C 00 00 00 */	cmpwi r0, 0
/* 80D10A44  40 82 00 24 */	bne lbl_80D10A68
/* 80D10A48  7F E3 FB 78 */	mr r3, r31
/* 80D10A4C  38 80 00 01 */	li r4, 1
/* 80D10A50  3C A0 80 D1 */	lis r5, lit_4324@ha /* 0x80D127D4@ha */
/* 80D10A54  C0 25 27 D4 */	lfs f1, lit_4324@l(r5)  /* 0x80D127D4@l */
/* 80D10A58  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80D10A5C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80D10A60  7D 89 03 A6 */	mtctr r12
/* 80D10A64  4E 80 04 21 */	bctrl 
lbl_80D10A68:
/* 80D10A68  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80D10A6C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80D10A70  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D10A74  7C 08 03 A6 */	mtlr r0
/* 80D10A78  38 21 00 50 */	addi r1, r1, 0x50
/* 80D10A7C  4E 80 00 20 */	blr 
