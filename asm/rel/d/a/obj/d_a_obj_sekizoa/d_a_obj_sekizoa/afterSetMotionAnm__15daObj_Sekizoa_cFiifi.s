lbl_80CD06BC:
/* 80CD06BC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CD06C0  7C 08 02 A6 */	mflr r0
/* 80CD06C4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CD06C8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80CD06CC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80CD06D0  39 61 00 40 */	addi r11, r1, 0x40
/* 80CD06D4  4B 69 1A E8 */	b _savegpr_21
/* 80CD06D8  7C 7C 1B 78 */	mr r28, r3
/* 80CD06DC  7C 9D 23 78 */	mr r29, r4
/* 80CD06E0  7C BE 2B 78 */	mr r30, r5
/* 80CD06E4  3C 60 80 CD */	lis r3, m__21daObj_Sekizoa_Param_c@ha
/* 80CD06E8  3B 43 5C FC */	addi r26, r3, m__21daObj_Sekizoa_Param_c@l
/* 80CD06EC  3C 60 80 CD */	lis r3, cNullVec__6Z2Calc@ha
/* 80CD06F0  3B 63 5E D8 */	addi r27, r3, cNullVec__6Z2Calc@l
/* 80CD06F4  3A E0 00 00 */	li r23, 0
/* 80CD06F8  3A C0 00 00 */	li r22, 0
/* 80CD06FC  88 1C 0A 88 */	lbz r0, 0xa88(r28)
/* 80CD0700  28 00 00 01 */	cmplwi r0, 1
/* 80CD0704  40 82 00 0C */	bne lbl_80CD0710
/* 80CD0708  C3 FA 00 C0 */	lfs f31, 0xc0(r26)
/* 80CD070C  48 00 00 08 */	b lbl_80CD0714
lbl_80CD0710:
/* 80CD0710  FF E0 08 90 */	fmr f31, f1
lbl_80CD0714:
/* 80CD0714  3A A0 00 01 */	li r21, 1
/* 80CD0718  3B E0 00 03 */	li r31, 3
/* 80CD071C  38 1D FF FA */	addi r0, r29, -6
/* 80CD0720  28 00 00 11 */	cmplwi r0, 0x11
/* 80CD0724  41 81 00 C4 */	bgt lbl_80CD07E8
/* 80CD0728  3C 60 80 CD */	lis r3, lit_5484@ha
/* 80CD072C  38 63 66 6C */	addi r3, r3, lit_5484@l
/* 80CD0730  54 00 10 3A */	slwi r0, r0, 2
/* 80CD0734  7C 03 00 2E */	lwzx r0, r3, r0
/* 80CD0738  7C 09 03 A6 */	mtctr r0
/* 80CD073C  4E 80 04 20 */	bctr 
lbl_80CD0740:
/* 80CD0740  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80CD0744  38 00 00 00 */	li r0, 0
/* 80CD0748  B0 03 00 12 */	sth r0, 0x12(r3)
/* 80CD074C  C0 1A 00 C0 */	lfs f0, 0xc0(r26)
/* 80CD0750  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CD0754  38 00 00 11 */	li r0, 0x11
/* 80CD0758  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80CD075C  B0 03 00 14 */	sth r0, 0x14(r3)
/* 80CD0760  48 00 00 88 */	b lbl_80CD07E8
lbl_80CD0764:
/* 80CD0764  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80CD0768  38 00 00 12 */	li r0, 0x12
/* 80CD076C  B0 03 00 12 */	sth r0, 0x12(r3)
/* 80CD0770  C0 1A 01 1C */	lfs f0, 0x11c(r26)
/* 80CD0774  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CD0778  38 00 00 23 */	li r0, 0x23
/* 80CD077C  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80CD0780  B0 03 00 14 */	sth r0, 0x14(r3)
/* 80CD0784  48 00 00 64 */	b lbl_80CD07E8
lbl_80CD0788:
/* 80CD0788  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80CD078C  38 00 00 24 */	li r0, 0x24
/* 80CD0790  B0 03 00 12 */	sth r0, 0x12(r3)
/* 80CD0794  C0 1A 01 20 */	lfs f0, 0x120(r26)
/* 80CD0798  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CD079C  48 00 00 4C */	b lbl_80CD07E8
lbl_80CD07A0:
/* 80CD07A0  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80CD07A4  38 00 00 1D */	li r0, 0x1d
/* 80CD07A8  B0 03 00 12 */	sth r0, 0x12(r3)
/* 80CD07AC  C0 1A 01 24 */	lfs f0, 0x124(r26)
/* 80CD07B0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CD07B4  38 00 00 29 */	li r0, 0x29
/* 80CD07B8  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80CD07BC  B0 03 00 14 */	sth r0, 0x14(r3)
/* 80CD07C0  48 00 00 28 */	b lbl_80CD07E8
lbl_80CD07C4:
/* 80CD07C4  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80CD07C8  38 00 00 00 */	li r0, 0
/* 80CD07CC  B0 03 00 12 */	sth r0, 0x12(r3)
/* 80CD07D0  C0 1A 00 C0 */	lfs f0, 0xc0(r26)
/* 80CD07D4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CD07D8  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80CD07DC  B0 03 00 14 */	sth r0, 0x14(r3)
/* 80CD07E0  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80CD07E4  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80CD07E8:
/* 80CD07E8  2C 1D 00 17 */	cmpwi r29, 0x17
/* 80CD07EC  40 82 00 10 */	bne lbl_80CD07FC
/* 80CD07F0  3A A0 00 03 */	li r21, 3
/* 80CD07F4  3B E0 00 05 */	li r31, 5
/* 80CD07F8  48 00 00 58 */	b lbl_80CD0850
lbl_80CD07FC:
/* 80CD07FC  88 1C 11 76 */	lbz r0, 0x1176(r28)
/* 80CD0800  28 00 00 00 */	cmplwi r0, 0
/* 80CD0804  41 82 00 4C */	beq lbl_80CD0850
/* 80CD0808  3A A0 00 02 */	li r21, 2
/* 80CD080C  3B E0 00 04 */	li r31, 4
/* 80CD0810  88 1C 11 78 */	lbz r0, 0x1178(r28)
/* 80CD0814  28 00 00 00 */	cmplwi r0, 0
/* 80CD0818  41 82 00 0C */	beq lbl_80CD0824
/* 80CD081C  3B E0 00 01 */	li r31, 1
/* 80CD0820  48 00 00 30 */	b lbl_80CD0850
lbl_80CD0824:
/* 80CD0824  88 1C 11 77 */	lbz r0, 0x1177(r28)
/* 80CD0828  28 00 00 00 */	cmplwi r0, 0
/* 80CD082C  41 82 00 0C */	beq lbl_80CD0838
/* 80CD0830  3B E0 00 02 */	li r31, 2
/* 80CD0834  48 00 00 1C */	b lbl_80CD0850
lbl_80CD0838:
/* 80CD0838  2C 1D 00 03 */	cmpwi r29, 3
/* 80CD083C  41 82 00 0C */	beq lbl_80CD0848
/* 80CD0840  2C 1D 00 0E */	cmpwi r29, 0xe
/* 80CD0844  40 82 00 0C */	bne lbl_80CD0850
lbl_80CD0848:
/* 80CD0848  3A A0 00 00 */	li r21, 0
/* 80CD084C  3B E0 00 00 */	li r31, 0
lbl_80CD0850:
/* 80CD0850  1F 35 00 0C */	mulli r25, r21, 0xc
/* 80CD0854  3B 1B 07 64 */	addi r24, r27, 0x764
/* 80CD0858  7C B8 C8 2E */	lwzx r5, r24, r25
/* 80CD085C  2C 05 FF FF */	cmpwi r5, -1
/* 80CD0860  41 82 00 24 */	beq lbl_80CD0884
/* 80CD0864  7F 83 E3 78 */	mr r3, r28
/* 80CD0868  7C 98 CA 14 */	add r4, r24, r25
/* 80CD086C  80 04 00 08 */	lwz r0, 8(r4)
/* 80CD0870  54 00 10 3A */	slwi r0, r0, 2
/* 80CD0874  38 9B 00 B8 */	addi r4, r27, 0xb8
/* 80CD0878  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CD087C  4B 47 78 90 */	b getTexSRTKeyAnmP__8daNpcT_cFPCci
/* 80CD0880  7C 77 1B 78 */	mr r23, r3
lbl_80CD0884:
/* 80CD0884  28 17 00 00 */	cmplwi r23, 0
/* 80CD0888  41 82 00 78 */	beq lbl_80CD0900
/* 80CD088C  80 1C 06 58 */	lwz r0, 0x658(r28)
/* 80CD0890  7C 00 B8 40 */	cmplw r0, r23
/* 80CD0894  40 82 00 14 */	bne lbl_80CD08A8
/* 80CD0898  80 1C 0D 98 */	lwz r0, 0xd98(r28)
/* 80CD089C  60 00 00 80 */	ori r0, r0, 0x80
/* 80CD08A0  90 1C 0D 98 */	stw r0, 0xd98(r28)
/* 80CD08A4  48 00 00 5C */	b lbl_80CD0900
lbl_80CD08A8:
/* 80CD08A8  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80CD08AC  80 63 00 04 */	lwz r3, 4(r3)
/* 80CD08B0  80 A3 00 04 */	lwz r5, 4(r3)
/* 80CD08B4  7F 83 E3 78 */	mr r3, r28
/* 80CD08B8  7E E4 BB 78 */	mr r4, r23
/* 80CD08BC  C0 3A 00 CC */	lfs f1, 0xcc(r26)
/* 80CD08C0  38 DB 07 64 */	addi r6, r27, 0x764
/* 80CD08C4  80 C6 00 34 */	lwz r6, 0x34(r6)
/* 80CD08C8  4B 47 7A 70 */	b setBtkAnm__8daNpcT_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 80CD08CC  2C 03 00 00 */	cmpwi r3, 0
/* 80CD08D0  41 82 00 20 */	beq lbl_80CD08F0
/* 80CD08D4  2C 15 00 03 */	cmpwi r21, 3
/* 80CD08D8  40 82 00 0C */	bne lbl_80CD08E4
/* 80CD08DC  C0 1A 00 C0 */	lfs f0, 0xc0(r26)
/* 80CD08E0  D0 1C 06 50 */	stfs f0, 0x650(r28)
lbl_80CD08E4:
/* 80CD08E4  80 1C 0D 98 */	lwz r0, 0xd98(r28)
/* 80CD08E8  60 00 00 82 */	ori r0, r0, 0x82
/* 80CD08EC  90 1C 0D 98 */	stw r0, 0xd98(r28)
lbl_80CD08F0:
/* 80CD08F0  80 1C 0D 98 */	lwz r0, 0xd98(r28)
/* 80CD08F4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80CD08F8  40 82 00 08 */	bne lbl_80CD0900
/* 80CD08FC  3A E0 00 00 */	li r23, 0
lbl_80CD0900:
/* 80CD0900  28 17 00 00 */	cmplwi r23, 0
/* 80CD0904  40 82 00 18 */	bne lbl_80CD091C
/* 80CD0908  7C 18 C8 2E */	lwzx r0, r24, r25
/* 80CD090C  2C 00 FF FF */	cmpwi r0, -1
/* 80CD0910  41 82 00 0C */	beq lbl_80CD091C
/* 80CD0914  38 60 00 00 */	li r3, 0
/* 80CD0918  48 00 01 4C */	b lbl_80CD0A64
lbl_80CD091C:
/* 80CD091C  1F 1F 00 0C */	mulli r24, r31, 0xc
/* 80CD0920  3B 3B 07 1C */	addi r25, r27, 0x71c
/* 80CD0924  7C B9 C0 2E */	lwzx r5, r25, r24
/* 80CD0928  2C 05 FF FF */	cmpwi r5, -1
/* 80CD092C  41 82 00 24 */	beq lbl_80CD0950
/* 80CD0930  7F 83 E3 78 */	mr r3, r28
/* 80CD0934  7C 99 C2 14 */	add r4, r25, r24
/* 80CD0938  80 04 00 08 */	lwz r0, 8(r4)
/* 80CD093C  54 00 10 3A */	slwi r0, r0, 2
/* 80CD0940  38 9B 00 B8 */	addi r4, r27, 0xb8
/* 80CD0944  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CD0948  4B 47 78 00 */	b getTevRegKeyAnmP__8daNpcT_cFPCci
/* 80CD094C  7C 76 1B 78 */	mr r22, r3
lbl_80CD0950:
/* 80CD0950  28 16 00 00 */	cmplwi r22, 0
/* 80CD0954  41 82 00 78 */	beq lbl_80CD09CC
/* 80CD0958  80 1C 06 70 */	lwz r0, 0x670(r28)
/* 80CD095C  7C 00 B0 40 */	cmplw r0, r22
/* 80CD0960  40 82 00 14 */	bne lbl_80CD0974
/* 80CD0964  80 1C 0D 98 */	lwz r0, 0xd98(r28)
/* 80CD0968  60 00 01 00 */	ori r0, r0, 0x100
/* 80CD096C  90 1C 0D 98 */	stw r0, 0xd98(r28)
/* 80CD0970  48 00 00 5C */	b lbl_80CD09CC
lbl_80CD0974:
/* 80CD0974  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80CD0978  80 63 00 04 */	lwz r3, 4(r3)
/* 80CD097C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80CD0980  7F 83 E3 78 */	mr r3, r28
/* 80CD0984  7E C4 B3 78 */	mr r4, r22
/* 80CD0988  C0 3A 00 CC */	lfs f1, 0xcc(r26)
/* 80CD098C  38 DB 07 1C */	addi r6, r27, 0x71c
/* 80CD0990  80 C6 00 4C */	lwz r6, 0x4c(r6)
/* 80CD0994  4B 47 79 E4 */	b setBrkAnm__8daNpcT_cFP15J3DAnmTevRegKeyP12J3DModelDatafi
/* 80CD0998  2C 03 00 00 */	cmpwi r3, 0
/* 80CD099C  41 82 00 20 */	beq lbl_80CD09BC
/* 80CD09A0  2C 1F 00 05 */	cmpwi r31, 5
/* 80CD09A4  40 82 00 0C */	bne lbl_80CD09B0
/* 80CD09A8  C0 1A 00 C0 */	lfs f0, 0xc0(r26)
/* 80CD09AC  D0 1C 06 68 */	stfs f0, 0x668(r28)
lbl_80CD09B0:
/* 80CD09B0  80 1C 0D 98 */	lwz r0, 0xd98(r28)
/* 80CD09B4  60 00 01 04 */	ori r0, r0, 0x104
/* 80CD09B8  90 1C 0D 98 */	stw r0, 0xd98(r28)
lbl_80CD09BC:
/* 80CD09BC  80 1C 0D 98 */	lwz r0, 0xd98(r28)
/* 80CD09C0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80CD09C4  40 82 00 08 */	bne lbl_80CD09CC
/* 80CD09C8  3A C0 00 00 */	li r22, 0
lbl_80CD09CC:
/* 80CD09CC  28 16 00 00 */	cmplwi r22, 0
/* 80CD09D0  40 82 00 18 */	bne lbl_80CD09E8
/* 80CD09D4  7C 19 C0 2E */	lwzx r0, r25, r24
/* 80CD09D8  2C 00 FF FF */	cmpwi r0, -1
/* 80CD09DC  41 82 00 0C */	beq lbl_80CD09E8
/* 80CD09E0  38 60 00 00 */	li r3, 0
/* 80CD09E4  48 00 00 80 */	b lbl_80CD0A64
lbl_80CD09E8:
/* 80CD09E8  88 1C 10 C8 */	lbz r0, 0x10c8(r28)
/* 80CD09EC  28 00 00 06 */	cmplwi r0, 6
/* 80CD09F0  40 82 00 0C */	bne lbl_80CD09FC
/* 80CD09F4  38 60 00 01 */	li r3, 1
/* 80CD09F8  48 00 00 6C */	b lbl_80CD0A64
lbl_80CD09FC:
/* 80CD09FC  7F 83 E3 78 */	mr r3, r28
/* 80CD0A00  7F A4 EB 78 */	mr r4, r29
/* 80CD0A04  7F C5 F3 78 */	mr r5, r30
/* 80CD0A08  FC 20 F8 90 */	fmr f1, f31
/* 80CD0A0C  4B FF FA F1 */	bl setYariAnm__15daObj_Sekizoa_cFiif
/* 80CD0A10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CD0A14  41 82 00 4C */	beq lbl_80CD0A60
/* 80CD0A18  88 1C 10 C8 */	lbz r0, 0x10c8(r28)
/* 80CD0A1C  28 00 00 02 */	cmplwi r0, 2
/* 80CD0A20  41 82 00 1C */	beq lbl_80CD0A3C
/* 80CD0A24  28 00 00 03 */	cmplwi r0, 3
/* 80CD0A28  41 82 00 14 */	beq lbl_80CD0A3C
/* 80CD0A2C  28 00 00 04 */	cmplwi r0, 4
/* 80CD0A30  41 82 00 0C */	beq lbl_80CD0A3C
/* 80CD0A34  28 00 00 05 */	cmplwi r0, 5
/* 80CD0A38  40 82 00 20 */	bne lbl_80CD0A58
lbl_80CD0A3C:
/* 80CD0A3C  C0 1A 00 C0 */	lfs f0, 0xc0(r26)
/* 80CD0A40  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80CD0A44  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80CD0A48  80 7C 0E 40 */	lwz r3, 0xe40(r28)
/* 80CD0A4C  28 03 00 00 */	cmplwi r3, 0
/* 80CD0A50  41 82 00 08 */	beq lbl_80CD0A58
/* 80CD0A54  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80CD0A58:
/* 80CD0A58  38 60 00 01 */	li r3, 1
/* 80CD0A5C  48 00 00 08 */	b lbl_80CD0A64
lbl_80CD0A60:
/* 80CD0A60  38 60 00 00 */	li r3, 0
lbl_80CD0A64:
/* 80CD0A64  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80CD0A68  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80CD0A6C  39 61 00 40 */	addi r11, r1, 0x40
/* 80CD0A70  4B 69 17 98 */	b _restgpr_21
/* 80CD0A74  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CD0A78  7C 08 03 A6 */	mtlr r0
/* 80CD0A7C  38 21 00 50 */	addi r1, r1, 0x50
/* 80CD0A80  4E 80 00 20 */	blr 
