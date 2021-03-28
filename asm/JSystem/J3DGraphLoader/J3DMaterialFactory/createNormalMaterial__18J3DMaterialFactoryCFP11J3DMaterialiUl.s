lbl_80330440:
/* 80330440  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 80330444  7C 08 02 A6 */	mflr r0
/* 80330448  90 01 01 24 */	stw r0, 0x124(r1)
/* 8033044C  39 61 01 20 */	addi r11, r1, 0x120
/* 80330450  48 03 1D 65 */	bl _savegpr_19
/* 80330454  7C 7E 1B 78 */	mr r30, r3
/* 80330458  7C 9F 23 78 */	mr r31, r4
/* 8033045C  7C BD 2B 78 */	mr r29, r5
/* 80330460  7C D4 33 78 */	mr r20, r6
/* 80330464  80 03 00 78 */	lwz r0, 0x78(r3)
/* 80330468  28 00 00 00 */	cmplwi r0, 0
/* 8033046C  41 82 00 0C */	beq lbl_80330478
/* 80330470  48 00 13 65 */	bl createLockedMaterial__18J3DMaterialFactoryCFP11J3DMaterialiUl
/* 80330474  48 00 08 F8 */	b lbl_80330D6C
lbl_80330478:
/* 80330478  7F A4 EB 78 */	mr r4, r29
/* 8033047C  4B FF FE C1 */	bl countStages__18J3DMaterialFactoryCFi
/* 80330480  56 9C 86 FE */	rlwinm r28, r20, 0x10, 0x1b, 0x1f
/* 80330484  7C 03 E0 40 */	cmplw r3, r28
/* 80330488  40 81 00 08 */	ble lbl_80330490
/* 8033048C  7C 7C 1B 78 */	mr r28, r3
lbl_80330490:
/* 80330490  28 1C 00 08 */	cmplwi r28, 8
/* 80330494  3B 40 00 08 */	li r26, 8
/* 80330498  41 81 00 08 */	bgt lbl_803304A0
/* 8033049C  7F 9A E3 78 */	mr r26, r28
lbl_803304A0:
/* 803304A0  7F C3 F3 78 */	mr r3, r30
/* 803304A4  7F A4 EB 78 */	mr r4, r29
/* 803304A8  4B FF FE 5D */	bl countTexGens__18J3DMaterialFactoryCFi
/* 803304AC  7C 79 1B 78 */	mr r25, r3
/* 803304B0  38 00 00 04 */	li r0, 4
/* 803304B4  7C 19 00 10 */	subfc r0, r25, r0
/* 803304B8  7C 60 01 10 */	subfe r3, r0, r0
/* 803304BC  56 80 01 0A */	rlwinm r0, r20, 0, 4, 5
/* 803304C0  7C 18 18 78 */	andc r24, r0, r3
/* 803304C4  56 9B 00 02 */	rlwinm r27, r20, 0, 0, 1
/* 803304C8  56 97 00 86 */	rlwinm r23, r20, 0, 2, 3
/* 803304CC  56 96 47 FE */	rlwinm r22, r20, 8, 0x1f, 0x1f
/* 803304D0  28 1F 00 00 */	cmplwi r31, 0
/* 803304D4  40 82 00 40 */	bne lbl_80330514
/* 803304D8  38 60 00 4C */	li r3, 0x4c
/* 803304DC  4B F9 E7 71 */	bl __nw__FUl
/* 803304E0  7C 73 1B 79 */	or. r19, r3, r3
/* 803304E4  41 82 00 2C */	beq lbl_80330510
/* 803304E8  3C 80 80 3D */	lis r4, __vt__11J3DMaterial@ha
/* 803304EC  38 04 DC F0 */	addi r0, r4, __vt__11J3DMaterial@l
/* 803304F0  90 13 00 00 */	stw r0, 0(r19)
/* 803304F4  3C 80 3C F4 */	lis r4, 0x3CF4 /* 0x3CF3CF00@ha */
/* 803304F8  38 04 CF 00 */	addi r0, r4, 0xCF00 /* 0x3CF3CF00@l */
/* 803304FC  90 13 00 40 */	stw r0, 0x40(r19)
/* 80330500  3C 80 00 F4 */	lis r4, 0x00F4 /* 0x00F3CF3C@ha */
/* 80330504  38 04 CF 3C */	addi r0, r4, 0xCF3C /* 0x00F3CF3C@l */
/* 80330508  90 13 00 44 */	stw r0, 0x44(r19)
/* 8033050C  4B FE 5D 35 */	bl initialize__11J3DMaterialFv
lbl_80330510:
/* 80330510  7E 7F 9B 78 */	mr r31, r19
lbl_80330514:
/* 80330514  7F 63 DB 78 */	mr r3, r27
/* 80330518  4B FE 52 89 */	bl createColorBlock__11J3DMaterialFUl
/* 8033051C  90 7F 00 24 */	stw r3, 0x24(r31)
/* 80330520  7F 03 C3 78 */	mr r3, r24
/* 80330524  4B FE 54 7D */	bl createTexGenBlock__11J3DMaterialFUl
/* 80330528  90 7F 00 28 */	stw r3, 0x28(r31)
/* 8033052C  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 80330530  4B FE 55 D5 */	bl createTevBlock__11J3DMaterialFi
/* 80330534  90 7F 00 2C */	stw r3, 0x2c(r31)
/* 80330538  7E C3 B3 78 */	mr r3, r22
/* 8033053C  4B FE 59 3D */	bl createIndBlock__11J3DMaterialFi
/* 80330540  90 7F 00 30 */	stw r3, 0x30(r31)
/* 80330544  7E E3 BB 78 */	mr r3, r23
/* 80330548  80 BE 00 04 */	lwz r5, 4(r30)
/* 8033054C  80 9E 00 08 */	lwz r4, 8(r30)
/* 80330550  57 BB 08 3C */	slwi r27, r29, 1
/* 80330554  7C 04 DA 2E */	lhzx r0, r4, r27
/* 80330558  1C 00 01 4C */	mulli r0, r0, 0x14c
/* 8033055C  7C 85 00 AE */	lbzx r4, r5, r0
/* 80330560  4B FE 5A 01 */	bl createPEBlock__11J3DMaterialFUlUl
/* 80330564  90 7F 00 34 */	stw r3, 0x34(r31)
/* 80330568  B3 BF 00 14 */	sth r29, 0x14(r31)
/* 8033056C  80 9E 00 04 */	lwz r4, 4(r30)
/* 80330570  80 7E 00 08 */	lwz r3, 8(r30)
/* 80330574  7C 03 DA 2E */	lhzx r0, r3, r27
/* 80330578  1C 00 01 4C */	mulli r0, r0, 0x14c
/* 8033057C  7C 04 00 AE */	lbzx r0, r4, r0
/* 80330580  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80330584  7F C3 F3 78 */	mr r3, r30
/* 80330588  7F A4 EB 78 */	mr r4, r29
/* 8033058C  48 00 17 E9 */	bl newColorChanNum__18J3DMaterialFactoryCFi
/* 80330590  7C 64 1B 78 */	mr r4, r3
/* 80330594  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 80330598  81 83 00 00 */	lwz r12, 0(r3)
/* 8033059C  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 803305A0  7D 89 03 A6 */	mtctr r12
/* 803305A4  4E 80 04 21 */	bctrl 
/* 803305A8  7F C3 F3 78 */	mr r3, r30
/* 803305AC  7F A4 EB 78 */	mr r4, r29
/* 803305B0  48 00 1B 1D */	bl newCullMode__18J3DMaterialFactoryCFi
/* 803305B4  7C 64 1B 78 */	mr r4, r3
/* 803305B8  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 803305BC  81 83 00 00 */	lwz r12, 0(r3)
/* 803305C0  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 803305C4  7D 89 03 A6 */	mtctr r12
/* 803305C8  4E 80 04 21 */	bctrl 
/* 803305CC  7F C3 F3 78 */	mr r3, r30
/* 803305D0  7F A4 EB 78 */	mr r4, r29
/* 803305D4  48 00 19 D9 */	bl newTexGenNum__18J3DMaterialFactoryCFi
/* 803305D8  7C 64 1B 78 */	mr r4, r3
/* 803305DC  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 803305E0  81 83 00 00 */	lwz r12, 0(r3)
/* 803305E4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 803305E8  7D 89 03 A6 */	mtctr r12
/* 803305EC  4E 80 04 21 */	bctrl 
/* 803305F0  38 61 00 78 */	addi r3, r1, 0x78
/* 803305F4  7F C4 F3 78 */	mr r4, r30
/* 803305F8  7F A5 EB 78 */	mr r5, r29
/* 803305FC  48 00 23 01 */	bl newNBTScale__18J3DMaterialFactoryCFi
/* 80330600  80 61 00 78 */	lwz r3, 0x78(r1)
/* 80330604  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80330608  90 61 00 88 */	stw r3, 0x88(r1)
/* 8033060C  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80330610  80 61 00 80 */	lwz r3, 0x80(r1)
/* 80330614  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80330618  90 61 00 90 */	stw r3, 0x90(r1)
/* 8033061C  90 01 00 94 */	stw r0, 0x94(r1)
/* 80330620  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80330624  38 81 00 88 */	addi r4, r1, 0x88
/* 80330628  81 83 00 00 */	lwz r12, 0(r3)
/* 8033062C  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 80330630  7D 89 03 A6 */	mtctr r12
/* 80330634  4E 80 04 21 */	bctrl 
/* 80330638  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8033063C  7F C4 F3 78 */	mr r4, r30
/* 80330640  7F A5 EB 78 */	mr r5, r29
/* 80330644  48 00 20 49 */	bl newFog__18J3DMaterialFactoryCFi
/* 80330648  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 8033064C  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80330650  81 83 00 00 */	lwz r12, 0(r3)
/* 80330654  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80330658  7D 89 03 A6 */	mtctr r12
/* 8033065C  4E 80 04 21 */	bctrl 
/* 80330660  38 61 00 4C */	addi r3, r1, 0x4c
/* 80330664  7F C4 F3 78 */	mr r4, r30
/* 80330668  7F A5 EB 78 */	mr r5, r29
/* 8033066C  48 00 20 FD */	bl newAlphaComp__18J3DMaterialFactoryCFi
/* 80330670  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80330674  38 81 00 4C */	addi r4, r1, 0x4c
/* 80330678  81 83 00 00 */	lwz r12, 0(r3)
/* 8033067C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80330680  7D 89 03 A6 */	mtctr r12
/* 80330684  4E 80 04 21 */	bctrl 
/* 80330688  38 61 00 48 */	addi r3, r1, 0x48
/* 8033068C  7F C4 F3 78 */	mr r4, r30
/* 80330690  7F A5 EB 78 */	mr r5, r29
/* 80330694  48 00 21 55 */	bl newBlend__18J3DMaterialFactoryCFi
/* 80330698  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 8033069C  38 81 00 48 */	addi r4, r1, 0x48
/* 803306A0  81 83 00 00 */	lwz r12, 0(r3)
/* 803306A4  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 803306A8  7D 89 03 A6 */	mtctr r12
/* 803306AC  4E 80 04 21 */	bctrl 
/* 803306B0  38 61 00 14 */	addi r3, r1, 0x14
/* 803306B4  7F C4 F3 78 */	mr r4, r30
/* 803306B8  7F A5 EB 78 */	mr r5, r29
/* 803306BC  48 00 21 71 */	bl newZMode__18J3DMaterialFactoryCFi
/* 803306C0  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 803306C4  B0 01 00 18 */	sth r0, 0x18(r1)
/* 803306C8  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 803306CC  38 81 00 18 */	addi r4, r1, 0x18
/* 803306D0  81 83 00 00 */	lwz r12, 0(r3)
/* 803306D4  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 803306D8  7D 89 03 A6 */	mtctr r12
/* 803306DC  4E 80 04 21 */	bctrl 
/* 803306E0  7F C3 F3 78 */	mr r3, r30
/* 803306E4  7F A4 EB 78 */	mr r4, r29
/* 803306E8  48 00 21 A5 */	bl newZCompLoc__18J3DMaterialFactoryCFi
/* 803306EC  7C 64 1B 78 */	mr r4, r3
/* 803306F0  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 803306F4  81 83 00 00 */	lwz r12, 0(r3)
/* 803306F8  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 803306FC  7D 89 03 A6 */	mtctr r12
/* 80330700  4E 80 04 21 */	bctrl 
/* 80330704  7F C3 F3 78 */	mr r3, r30
/* 80330708  7F A4 EB 78 */	mr r4, r29
/* 8033070C  48 00 21 B9 */	bl newDither__18J3DMaterialFactoryCFi
/* 80330710  7C 64 1B 78 */	mr r4, r3
/* 80330714  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80330718  81 83 00 00 */	lwz r12, 0(r3)
/* 8033071C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 80330720  7D 89 03 A6 */	mtctr r12
/* 80330724  4E 80 04 21 */	bctrl 
/* 80330728  7F C3 F3 78 */	mr r3, r30
/* 8033072C  7F A4 EB 78 */	mr r4, r29
/* 80330730  48 00 1B 3D */	bl newTevStageNum__18J3DMaterialFactoryCFi
/* 80330734  7C 64 1B 78 */	mr r4, r3
/* 80330738  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8033073C  81 83 00 00 */	lwz r12, 0(r3)
/* 80330740  81 8C 00 94 */	lwz r12, 0x94(r12)
/* 80330744  7D 89 03 A6 */	mtctr r12
/* 80330748  4E 80 04 21 */	bctrl 
/* 8033074C  3A 60 00 00 */	li r19, 0
/* 80330750  48 00 00 30 */	b lbl_80330780
lbl_80330754:
/* 80330754  7F C3 F3 78 */	mr r3, r30
/* 80330758  7F A4 EB 78 */	mr r4, r29
/* 8033075C  48 00 19 B1 */	bl newTexNo__18J3DMaterialFactoryCFii
/* 80330760  7C 65 1B 78 */	mr r5, r3
/* 80330764  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80330768  56 64 06 3E */	clrlwi r4, r19, 0x18
/* 8033076C  81 83 00 00 */	lwz r12, 0(r3)
/* 80330770  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80330774  7D 89 03 A6 */	mtctr r12
/* 80330778  4E 80 04 21 */	bctrl 
/* 8033077C  3A 73 00 01 */	addi r19, r19, 1
lbl_80330780:
/* 80330780  56 65 06 3E */	clrlwi r5, r19, 0x18
/* 80330784  7C 05 D0 40 */	cmplw r5, r26
/* 80330788  41 80 FF CC */	blt lbl_80330754
/* 8033078C  3A 60 00 00 */	li r19, 0
/* 80330790  48 00 00 3C */	b lbl_803307CC
lbl_80330794:
/* 80330794  38 61 00 40 */	addi r3, r1, 0x40
/* 80330798  7F C4 F3 78 */	mr r4, r30
/* 8033079C  7F A5 EB 78 */	mr r5, r29
/* 803307A0  48 00 19 B5 */	bl newTevOrder__18J3DMaterialFactoryCFii
/* 803307A4  80 01 00 40 */	lwz r0, 0x40(r1)
/* 803307A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 803307AC  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 803307B0  56 64 06 3E */	clrlwi r4, r19, 0x18
/* 803307B4  38 A1 00 44 */	addi r5, r1, 0x44
/* 803307B8  81 83 00 00 */	lwz r12, 0(r3)
/* 803307BC  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 803307C0  7D 89 03 A6 */	mtctr r12
/* 803307C4  4E 80 04 21 */	bctrl 
/* 803307C8  3A 73 00 01 */	addi r19, r19, 1
lbl_803307CC:
/* 803307CC  56 66 06 3E */	clrlwi r6, r19, 0x18
/* 803307D0  7C 06 E0 40 */	cmplw r6, r28
/* 803307D4  41 80 FF C0 */	blt lbl_80330794
/* 803307D8  3A A0 00 00 */	li r21, 0
/* 803307DC  83 1E 00 04 */	lwz r24, 4(r30)
/* 803307E0  83 5E 00 08 */	lwz r26, 8(r30)
/* 803307E4  48 00 00 DC */	b lbl_803308C0
lbl_803307E8:
/* 803307E8  7C 1B D2 2E */	lhzx r0, r27, r26
/* 803307EC  1C 00 01 4C */	mulli r0, r0, 0x14c
/* 803307F0  7E 98 02 14 */	add r20, r24, r0
/* 803307F4  38 61 00 60 */	addi r3, r1, 0x60
/* 803307F8  7F C4 F3 78 */	mr r4, r30
/* 803307FC  7F A5 EB 78 */	mr r5, r29
/* 80330800  48 00 1A A5 */	bl newTevStage__18J3DMaterialFactoryCFii
/* 80330804  80 61 00 60 */	lwz r3, 0x60(r1)
/* 80330808  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8033080C  90 61 00 68 */	stw r3, 0x68(r1)
/* 80330810  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80330814  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80330818  56 B6 06 3E */	clrlwi r22, r21, 0x18
/* 8033081C  7E C4 B3 78 */	mr r4, r22
/* 80330820  38 A1 00 68 */	addi r5, r1, 0x68
/* 80330824  81 83 00 00 */	lwz r12, 0(r3)
/* 80330828  81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 8033082C  7D 89 03 A6 */	mtctr r12
/* 80330830  4E 80 04 21 */	bctrl 
/* 80330834  56 C3 08 3C */	slwi r3, r22, 1
/* 80330838  3A E3 01 04 */	addi r23, r3, 0x104
/* 8033083C  7C 14 BA 2E */	lhzx r0, r20, r23
/* 80330840  28 00 FF FF */	cmplwi r0, 0xffff
/* 80330844  41 82 00 78 */	beq lbl_803308BC
/* 80330848  80 9E 00 54 */	lwz r4, 0x54(r30)
/* 8033084C  54 03 13 BA */	rlwinm r3, r0, 2, 0xe, 0x1d
/* 80330850  38 03 00 01 */	addi r0, r3, 1
/* 80330854  7E 64 00 AE */	lbzx r19, r4, r0
/* 80330858  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8033085C  7E C4 B3 78 */	mr r4, r22
/* 80330860  81 83 00 00 */	lwz r12, 0(r3)
/* 80330864  81 8C 00 A4 */	lwz r12, 0xa4(r12)
/* 80330868  7D 89 03 A6 */	mtctr r12
/* 8033086C  4E 80 04 21 */	bctrl 
/* 80330870  88 03 00 07 */	lbz r0, 7(r3)
/* 80330874  54 04 07 B6 */	rlwinm r4, r0, 0, 0x1e, 0x1b
/* 80330878  56 60 15 BA */	rlwinm r0, r19, 2, 0x16, 0x1d
/* 8033087C  7C 80 03 78 */	or r0, r4, r0
/* 80330880  98 03 00 07 */	stb r0, 7(r3)
/* 80330884  80 7E 00 54 */	lwz r3, 0x54(r30)
/* 80330888  7C 14 BA 2E */	lhzx r0, r20, r23
/* 8033088C  54 00 10 3A */	slwi r0, r0, 2
/* 80330890  7E 63 00 AE */	lbzx r19, r3, r0
/* 80330894  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80330898  7E C4 B3 78 */	mr r4, r22
/* 8033089C  81 83 00 00 */	lwz r12, 0(r3)
/* 803308A0  81 8C 00 A4 */	lwz r12, 0xa4(r12)
/* 803308A4  7D 89 03 A6 */	mtctr r12
/* 803308A8  4E 80 04 21 */	bctrl 
/* 803308AC  88 03 00 07 */	lbz r0, 7(r3)
/* 803308B0  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 803308B4  7C 00 9B 78 */	or r0, r0, r19
/* 803308B8  98 03 00 07 */	stb r0, 7(r3)
lbl_803308BC:
/* 803308BC  3A B5 00 01 */	addi r21, r21, 1
lbl_803308C0:
/* 803308C0  56 A6 06 3E */	clrlwi r6, r21, 0x18
/* 803308C4  7C 06 E0 40 */	cmplw r6, r28
/* 803308C8  41 80 FF 20 */	blt lbl_803307E8
/* 803308CC  3A 60 00 00 */	li r19, 0
/* 803308D0  48 00 00 38 */	b lbl_80330908
lbl_803308D4:
/* 803308D4  38 61 00 3C */	addi r3, r1, 0x3c
/* 803308D8  7F C4 F3 78 */	mr r4, r30
/* 803308DC  7F A5 EB 78 */	mr r5, r29
/* 803308E0  56 66 06 3E */	clrlwi r6, r19, 0x18
/* 803308E4  48 00 19 2D */	bl newTevKColor__18J3DMaterialFactoryCFii
/* 803308E8  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 803308EC  56 64 06 3E */	clrlwi r4, r19, 0x18
/* 803308F0  38 A1 00 3C */	addi r5, r1, 0x3c
/* 803308F4  81 83 00 00 */	lwz r12, 0(r3)
/* 803308F8  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 803308FC  7D 89 03 A6 */	mtctr r12
/* 80330900  4E 80 04 21 */	bctrl 
/* 80330904  3A 73 00 01 */	addi r19, r19, 1
lbl_80330908:
/* 80330908  56 60 06 3E */	clrlwi r0, r19, 0x18
/* 8033090C  28 00 00 04 */	cmplwi r0, 4
/* 80330910  41 80 FF C4 */	blt lbl_803308D4
/* 80330914  3A 60 00 00 */	li r19, 0
/* 80330918  48 00 00 38 */	b lbl_80330950
lbl_8033091C:
/* 8033091C  38 61 00 58 */	addi r3, r1, 0x58
/* 80330920  7F C4 F3 78 */	mr r4, r30
/* 80330924  7F A5 EB 78 */	mr r5, r29
/* 80330928  56 66 06 3E */	clrlwi r6, r19, 0x18
/* 8033092C  48 00 18 75 */	bl newTevColor__18J3DMaterialFactoryCFii
/* 80330930  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80330934  56 64 06 3E */	clrlwi r4, r19, 0x18
/* 80330938  38 A1 00 58 */	addi r5, r1, 0x58
/* 8033093C  81 83 00 00 */	lwz r12, 0(r3)
/* 80330940  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 80330944  7D 89 03 A6 */	mtctr r12
/* 80330948  4E 80 04 21 */	bctrl 
/* 8033094C  3A 73 00 01 */	addi r19, r19, 1
lbl_80330950:
/* 80330950  56 60 06 3E */	clrlwi r0, r19, 0x18
/* 80330954  28 00 00 04 */	cmplwi r0, 4
/* 80330958  41 80 FF C4 */	blt lbl_8033091C
/* 8033095C  3A 60 00 00 */	li r19, 0
/* 80330960  48 00 00 40 */	b lbl_803309A0
lbl_80330964:
/* 80330964  38 61 00 08 */	addi r3, r1, 8
/* 80330968  7F C4 F3 78 */	mr r4, r30
/* 8033096C  7F A5 EB 78 */	mr r5, r29
/* 80330970  56 66 06 3E */	clrlwi r6, r19, 0x18
/* 80330974  48 00 19 91 */	bl newTevSwapModeTable__18J3DMaterialFactoryCFii
/* 80330978  88 01 00 08 */	lbz r0, 8(r1)
/* 8033097C  98 01 00 0C */	stb r0, 0xc(r1)
/* 80330980  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80330984  56 64 06 3E */	clrlwi r4, r19, 0x18
/* 80330988  38 A1 00 0C */	addi r5, r1, 0xc
/* 8033098C  81 83 00 00 */	lwz r12, 0(r3)
/* 80330990  81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 80330994  7D 89 03 A6 */	mtctr r12
/* 80330998  4E 80 04 21 */	bctrl 
/* 8033099C  3A 73 00 01 */	addi r19, r19, 1
lbl_803309A0:
/* 803309A0  56 60 06 3E */	clrlwi r0, r19, 0x18
/* 803309A4  28 00 00 04 */	cmplwi r0, 4
/* 803309A8  41 80 FF BC */	blt lbl_80330964
/* 803309AC  3A 60 00 00 */	li r19, 0
/* 803309B0  48 00 00 38 */	b lbl_803309E8
lbl_803309B4:
/* 803309B4  38 61 00 38 */	addi r3, r1, 0x38
/* 803309B8  7F C4 F3 78 */	mr r4, r30
/* 803309BC  7F A5 EB 78 */	mr r5, r29
/* 803309C0  56 66 06 3E */	clrlwi r6, r19, 0x18
/* 803309C4  48 00 15 8D */	bl newAmbColor__18J3DMaterialFactoryCFii
/* 803309C8  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 803309CC  56 64 06 3E */	clrlwi r4, r19, 0x18
/* 803309D0  38 A1 00 38 */	addi r5, r1, 0x38
/* 803309D4  81 83 00 00 */	lwz r12, 0(r3)
/* 803309D8  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 803309DC  7D 89 03 A6 */	mtctr r12
/* 803309E0  4E 80 04 21 */	bctrl 
/* 803309E4  3A 73 00 01 */	addi r19, r19, 1
lbl_803309E8:
/* 803309E8  56 60 06 3E */	clrlwi r0, r19, 0x18
/* 803309EC  28 00 00 02 */	cmplwi r0, 2
/* 803309F0  41 80 FF C4 */	blt lbl_803309B4
/* 803309F4  3A 60 00 00 */	li r19, 0
/* 803309F8  48 00 00 38 */	b lbl_80330A30
lbl_803309FC:
/* 803309FC  38 61 00 34 */	addi r3, r1, 0x34
/* 80330A00  7F C4 F3 78 */	mr r4, r30
/* 80330A04  7F A5 EB 78 */	mr r5, r29
/* 80330A08  56 66 06 3E */	clrlwi r6, r19, 0x18
/* 80330A0C  48 00 13 0D */	bl newMatColor__18J3DMaterialFactoryCFii
/* 80330A10  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 80330A14  56 64 06 3E */	clrlwi r4, r19, 0x18
/* 80330A18  38 A1 00 34 */	addi r5, r1, 0x34
/* 80330A1C  81 83 00 00 */	lwz r12, 0(r3)
/* 80330A20  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80330A24  7D 89 03 A6 */	mtctr r12
/* 80330A28  4E 80 04 21 */	bctrl 
/* 80330A2C  3A 73 00 01 */	addi r19, r19, 1
lbl_80330A30:
/* 80330A30  56 60 06 3E */	clrlwi r0, r19, 0x18
/* 80330A34  28 00 00 02 */	cmplwi r0, 2
/* 80330A38  41 80 FF C4 */	blt lbl_803309FC
/* 80330A3C  3A 60 00 00 */	li r19, 0
/* 80330A40  48 00 00 40 */	b lbl_80330A80
lbl_80330A44:
/* 80330A44  38 61 00 10 */	addi r3, r1, 0x10
/* 80330A48  7F C4 F3 78 */	mr r4, r30
/* 80330A4C  7F A5 EB 78 */	mr r5, r29
/* 80330A50  56 66 06 3E */	clrlwi r6, r19, 0x18
/* 80330A54  48 00 13 59 */	bl newColorChan__18J3DMaterialFactoryCFii
/* 80330A58  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 80330A5C  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80330A60  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 80330A64  56 64 06 3E */	clrlwi r4, r19, 0x18
/* 80330A68  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80330A6C  81 83 00 00 */	lwz r12, 0(r3)
/* 80330A70  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 80330A74  7D 89 03 A6 */	mtctr r12
/* 80330A78  4E 80 04 21 */	bctrl 
/* 80330A7C  3A 73 00 01 */	addi r19, r19, 1
lbl_80330A80:
/* 80330A80  56 60 06 3E */	clrlwi r0, r19, 0x18
/* 80330A84  28 00 00 04 */	cmplwi r0, 4
/* 80330A88  41 80 FF BC */	blt lbl_80330A44
/* 80330A8C  3A 60 00 00 */	li r19, 0
/* 80330A90  48 00 00 44 */	b lbl_80330AD4
lbl_80330A94:
/* 80330A94  38 61 00 50 */	addi r3, r1, 0x50
/* 80330A98  7F C4 F3 78 */	mr r4, r30
/* 80330A9C  7F A5 EB 78 */	mr r5, r29
/* 80330AA0  48 00 15 45 */	bl newTexCoord__18J3DMaterialFactoryCFii
/* 80330AA4  80 01 00 50 */	lwz r0, 0x50(r1)
/* 80330AA8  90 01 00 70 */	stw r0, 0x70(r1)
/* 80330AAC  A0 01 00 54 */	lhz r0, 0x54(r1)
/* 80330AB0  B0 01 00 74 */	sth r0, 0x74(r1)
/* 80330AB4  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80330AB8  56 64 06 3E */	clrlwi r4, r19, 0x18
/* 80330ABC  38 A1 00 70 */	addi r5, r1, 0x70
/* 80330AC0  81 83 00 00 */	lwz r12, 0(r3)
/* 80330AC4  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80330AC8  7D 89 03 A6 */	mtctr r12
/* 80330ACC  4E 80 04 21 */	bctrl 
/* 80330AD0  3A 73 00 01 */	addi r19, r19, 1
lbl_80330AD4:
/* 80330AD4  56 66 06 3E */	clrlwi r6, r19, 0x18
/* 80330AD8  7C 06 C8 40 */	cmplw r6, r25
/* 80330ADC  41 80 FF B8 */	blt lbl_80330A94
/* 80330AE0  3A 60 00 00 */	li r19, 0
/* 80330AE4  48 00 00 34 */	b lbl_80330B18
lbl_80330AE8:
/* 80330AE8  7F C3 F3 78 */	mr r3, r30
/* 80330AEC  7F A4 EB 78 */	mr r4, r29
/* 80330AF0  56 65 06 3E */	clrlwi r5, r19, 0x18
/* 80330AF4  48 00 15 51 */	bl newTexMtx__18J3DMaterialFactoryCFii
/* 80330AF8  7C 65 1B 78 */	mr r5, r3
/* 80330AFC  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80330B00  56 64 06 3E */	clrlwi r4, r19, 0x18
/* 80330B04  81 83 00 00 */	lwz r12, 0(r3)
/* 80330B08  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80330B0C  7D 89 03 A6 */	mtctr r12
/* 80330B10  4E 80 04 21 */	bctrl 
/* 80330B14  3A 73 00 01 */	addi r19, r19, 1
lbl_80330B18:
/* 80330B18  56 60 06 3E */	clrlwi r0, r19, 0x18
/* 80330B1C  28 00 00 08 */	cmplwi r0, 8
/* 80330B20  41 80 FF C8 */	blt lbl_80330AE8
/* 80330B24  80 9E 00 04 */	lwz r4, 4(r30)
/* 80330B28  80 7E 00 08 */	lwz r3, 8(r30)
/* 80330B2C  7C 03 DA 2E */	lhzx r0, r3, r27
/* 80330B30  1C 00 01 4C */	mulli r0, r0, 0x14c
/* 80330B34  7E 64 02 14 */	add r19, r4, r0
/* 80330B38  3A 80 00 00 */	li r20, 0
/* 80330B3C  48 00 00 4C */	b lbl_80330B88
lbl_80330B40:
/* 80330B40  56 84 06 3E */	clrlwi r4, r20, 0x18
/* 80330B44  38 04 00 9C */	addi r0, r4, 0x9c
/* 80330B48  7C B3 00 AE */	lbzx r5, r19, r0
/* 80330B4C  28 05 00 FF */	cmplwi r5, 0xff
/* 80330B50  41 82 00 1C */	beq lbl_80330B6C
/* 80330B54  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80330B58  81 83 00 00 */	lwz r12, 0(r3)
/* 80330B5C  81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 80330B60  7D 89 03 A6 */	mtctr r12
/* 80330B64  4E 80 04 21 */	bctrl 
/* 80330B68  48 00 00 1C */	b lbl_80330B84
lbl_80330B6C:
/* 80330B6C  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80330B70  38 A0 00 0C */	li r5, 0xc
/* 80330B74  81 83 00 00 */	lwz r12, 0(r3)
/* 80330B78  81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 80330B7C  7D 89 03 A6 */	mtctr r12
/* 80330B80  4E 80 04 21 */	bctrl 
lbl_80330B84:
/* 80330B84  3A 94 00 01 */	addi r20, r20, 1
lbl_80330B88:
/* 80330B88  56 80 06 3E */	clrlwi r0, r20, 0x18
/* 80330B8C  7C 00 E0 40 */	cmplw r0, r28
/* 80330B90  41 80 FF B0 */	blt lbl_80330B40
/* 80330B94  3A 80 00 00 */	li r20, 0
/* 80330B98  48 00 00 4C */	b lbl_80330BE4
lbl_80330B9C:
/* 80330B9C  56 84 06 3E */	clrlwi r4, r20, 0x18
/* 80330BA0  38 04 00 AC */	addi r0, r4, 0xac
/* 80330BA4  7C B3 00 AE */	lbzx r5, r19, r0
/* 80330BA8  28 05 00 FF */	cmplwi r5, 0xff
/* 80330BAC  41 82 00 1C */	beq lbl_80330BC8
/* 80330BB0  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80330BB4  81 83 00 00 */	lwz r12, 0(r3)
/* 80330BB8  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 80330BBC  7D 89 03 A6 */	mtctr r12
/* 80330BC0  4E 80 04 21 */	bctrl 
/* 80330BC4  48 00 00 1C */	b lbl_80330BE0
lbl_80330BC8:
/* 80330BC8  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80330BCC  38 A0 00 1C */	li r5, 0x1c
/* 80330BD0  81 83 00 00 */	lwz r12, 0(r3)
/* 80330BD4  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 80330BD8  7D 89 03 A6 */	mtctr r12
/* 80330BDC  4E 80 04 21 */	bctrl 
lbl_80330BE0:
/* 80330BE0  3A 94 00 01 */	addi r20, r20, 1
lbl_80330BE4:
/* 80330BE4  56 80 06 3E */	clrlwi r0, r20, 0x18
/* 80330BE8  7C 00 E0 40 */	cmplw r0, r28
/* 80330BEC  41 80 FF B0 */	blt lbl_80330B9C
/* 80330BF0  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80330BF4  28 00 00 00 */	cmplwi r0, 0
/* 80330BF8  41 82 01 70 */	beq lbl_80330D68
/* 80330BFC  7F C3 F3 78 */	mr r3, r30
/* 80330C00  7F A4 EB 78 */	mr r4, r29
/* 80330C04  48 00 17 9D */	bl newIndTexStageNum__18J3DMaterialFactoryCFi
/* 80330C08  7C 75 1B 78 */	mr r21, r3
/* 80330C0C  7F C3 F3 78 */	mr r3, r30
/* 80330C10  7F A4 EB 78 */	mr r4, r29
/* 80330C14  48 00 17 8D */	bl newIndTexStageNum__18J3DMaterialFactoryCFi
/* 80330C18  7C 64 1B 78 */	mr r4, r3
/* 80330C1C  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80330C20  81 83 00 00 */	lwz r12, 0(r3)
/* 80330C24  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80330C28  7D 89 03 A6 */	mtctr r12
/* 80330C2C  4E 80 04 21 */	bctrl 
/* 80330C30  3A 60 00 00 */	li r19, 0
/* 80330C34  56 B4 06 3E */	clrlwi r20, r21, 0x18
/* 80330C38  48 00 00 38 */	b lbl_80330C70
lbl_80330C3C:
/* 80330C3C  38 61 00 98 */	addi r3, r1, 0x98
/* 80330C40  7F C4 F3 78 */	mr r4, r30
/* 80330C44  7F A5 EB 78 */	mr r5, r29
/* 80330C48  56 66 06 3E */	clrlwi r6, r19, 0x18
/* 80330C4C  48 00 17 C1 */	bl newIndTexMtx__18J3DMaterialFactoryCFii
/* 80330C50  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80330C54  56 64 06 3E */	clrlwi r4, r19, 0x18
/* 80330C58  38 A1 00 98 */	addi r5, r1, 0x98
/* 80330C5C  81 83 00 00 */	lwz r12, 0(r3)
/* 80330C60  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80330C64  7D 89 03 A6 */	mtctr r12
/* 80330C68  4E 80 04 21 */	bctrl 
/* 80330C6C  3A 73 00 01 */	addi r19, r19, 1
lbl_80330C70:
/* 80330C70  56 60 06 3E */	clrlwi r0, r19, 0x18
/* 80330C74  7C 00 A0 40 */	cmplw r0, r20
/* 80330C78  41 80 FF C4 */	blt lbl_80330C3C
/* 80330C7C  3A 60 00 00 */	li r19, 0
/* 80330C80  56 B4 06 3E */	clrlwi r20, r21, 0x18
/* 80330C84  48 00 00 40 */	b lbl_80330CC4
lbl_80330C88:
/* 80330C88  38 61 00 2C */	addi r3, r1, 0x2c
/* 80330C8C  7F C4 F3 78 */	mr r4, r30
/* 80330C90  7F A5 EB 78 */	mr r5, r29
/* 80330C94  56 66 06 3E */	clrlwi r6, r19, 0x18
/* 80330C98  48 00 17 31 */	bl newIndTexOrder__18J3DMaterialFactoryCFii
/* 80330C9C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80330CA0  90 01 00 30 */	stw r0, 0x30(r1)
/* 80330CA4  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80330CA8  56 64 06 3E */	clrlwi r4, r19, 0x18
/* 80330CAC  38 A1 00 30 */	addi r5, r1, 0x30
/* 80330CB0  81 83 00 00 */	lwz r12, 0(r3)
/* 80330CB4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80330CB8  7D 89 03 A6 */	mtctr r12
/* 80330CBC  4E 80 04 21 */	bctrl 
/* 80330CC0  3A 73 00 01 */	addi r19, r19, 1
lbl_80330CC4:
/* 80330CC4  56 60 06 3E */	clrlwi r0, r19, 0x18
/* 80330CC8  7C 00 A0 40 */	cmplw r0, r20
/* 80330CCC  41 80 FF BC */	blt lbl_80330C88
/* 80330CD0  3A 60 00 00 */	li r19, 0
/* 80330CD4  56 B4 06 3E */	clrlwi r20, r21, 0x18
/* 80330CD8  48 00 00 38 */	b lbl_80330D10
lbl_80330CDC:
/* 80330CDC  38 61 00 28 */	addi r3, r1, 0x28
/* 80330CE0  7F C4 F3 78 */	mr r4, r30
/* 80330CE4  7F A5 EB 78 */	mr r5, r29
/* 80330CE8  56 66 06 3E */	clrlwi r6, r19, 0x18
/* 80330CEC  48 00 19 5D */	bl newIndTexCoordScale__18J3DMaterialFactoryCFii
/* 80330CF0  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80330CF4  56 64 06 3E */	clrlwi r4, r19, 0x18
/* 80330CF8  38 A1 00 28 */	addi r5, r1, 0x28
/* 80330CFC  81 83 00 00 */	lwz r12, 0(r3)
/* 80330D00  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80330D04  7D 89 03 A6 */	mtctr r12
/* 80330D08  4E 80 04 21 */	bctrl 
/* 80330D0C  3A 73 00 01 */	addi r19, r19, 1
lbl_80330D10:
/* 80330D10  56 60 06 3E */	clrlwi r0, r19, 0x18
/* 80330D14  7C 00 A0 40 */	cmplw r0, r20
/* 80330D18  41 80 FF C4 */	blt lbl_80330CDC
/* 80330D1C  3A 60 00 00 */	li r19, 0
/* 80330D20  48 00 00 3C */	b lbl_80330D5C
lbl_80330D24:
/* 80330D24  38 61 00 20 */	addi r3, r1, 0x20
/* 80330D28  7F C4 F3 78 */	mr r4, r30
/* 80330D2C  7F A5 EB 78 */	mr r5, r29
/* 80330D30  48 00 17 85 */	bl newIndTevStage__18J3DMaterialFactoryCFii
/* 80330D34  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80330D38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80330D3C  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80330D40  56 64 06 3E */	clrlwi r4, r19, 0x18
/* 80330D44  38 A1 00 24 */	addi r5, r1, 0x24
/* 80330D48  81 83 00 00 */	lwz r12, 0(r3)
/* 80330D4C  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80330D50  7D 89 03 A6 */	mtctr r12
/* 80330D54  4E 80 04 21 */	bctrl 
/* 80330D58  3A 73 00 01 */	addi r19, r19, 1
lbl_80330D5C:
/* 80330D5C  56 66 06 3E */	clrlwi r6, r19, 0x18
/* 80330D60  7C 06 E0 40 */	cmplw r6, r28
/* 80330D64  41 80 FF C0 */	blt lbl_80330D24
lbl_80330D68:
/* 80330D68  7F E3 FB 78 */	mr r3, r31
lbl_80330D6C:
/* 80330D6C  39 61 01 20 */	addi r11, r1, 0x120
/* 80330D70  48 03 14 91 */	bl _restgpr_19
/* 80330D74  80 01 01 24 */	lwz r0, 0x124(r1)
/* 80330D78  7C 08 03 A6 */	mtlr r0
/* 80330D7C  38 21 01 20 */	addi r1, r1, 0x120
/* 80330D80  4E 80 00 20 */	blr 
