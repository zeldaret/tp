lbl_80338134:
/* 80338134  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80338138  7C 08 02 A6 */	mflr r0
/* 8033813C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80338140  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80338144  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80338148  7C 7E 1B 78 */	mr r30, r3
/* 8033814C  7C 9F 23 79 */	or. r31, r4, r4
/* 80338150  41 82 03 00 */	beq lbl_80338450
/* 80338154  80 7F 00 00 */	lwz r3, 0(r31)
/* 80338158  3C 03 B5 CD */	addis r0, r3, 0xb5cd
/* 8033815C  28 00 44 31 */	cmplwi r0, 0x4431
/* 80338160  40 82 02 F0 */	bne lbl_80338450
/* 80338164  80 BF 00 04 */	lwz r5, 4(r31)
/* 80338168  3C 60 62 72 */	lis r3, 0x6272 /* 0x62726B31@ha */
/* 8033816C  38 03 6B 31 */	addi r0, r3, 0x6B31 /* 0x62726B31@l */
/* 80338170  7C 05 00 00 */	cmpw r5, r0
/* 80338174  41 82 01 70 */	beq lbl_803382E4
/* 80338178  40 80 00 70 */	bge lbl_803381E8
/* 8033817C  3C 80 62 6C */	lis r4, 0x626C /* 0x626C6B31@ha */
/* 80338180  38 04 6B 31 */	addi r0, r4, 0x6B31 /* 0x626C6B31@l */
/* 80338184  7C 05 00 00 */	cmpw r5, r0
/* 80338188  41 82 01 0C */	beq lbl_80338294
/* 8033818C  40 80 00 38 */	bge lbl_803381C4
/* 80338190  3C 60 62 63 */	lis r3, 0x6263 /* 0x62636B31@ha */
/* 80338194  38 03 6B 31 */	addi r0, r3, 0x6B31 /* 0x62636B31@l */
/* 80338198  7C 05 00 00 */	cmpw r5, r0
/* 8033819C  41 82 00 A8 */	beq lbl_80338244
/* 803381A0  40 80 00 14 */	bge lbl_803381B4
/* 803381A4  38 03 61 31 */	addi r0, r3, 0x6131
/* 803381A8  7C 05 00 00 */	cmpw r5, r0
/* 803381AC  41 82 01 A4 */	beq lbl_80338350
/* 803381B0  48 00 02 90 */	b lbl_80338440
lbl_803381B4:
/* 803381B4  38 04 61 31 */	addi r0, r4, 0x6131
/* 803381B8  7C 05 00 00 */	cmpw r5, r0
/* 803381BC  41 82 02 0C */	beq lbl_803383C8
/* 803381C0  48 00 02 80 */	b lbl_80338440
lbl_803381C4:
/* 803381C4  3C 60 62 70 */	lis r3, 0x6270 /* 0x62706B31@ha */
/* 803381C8  38 03 6B 31 */	addi r0, r3, 0x6B31 /* 0x62706B31@l */
/* 803381CC  7C 05 00 00 */	cmpw r5, r0
/* 803381D0  41 82 00 9C */	beq lbl_8033826C
/* 803381D4  40 80 02 6C */	bge lbl_80338440
/* 803381D8  38 03 61 31 */	addi r0, r3, 0x6131
/* 803381DC  7C 05 00 00 */	cmpw r5, r0
/* 803381E0  41 82 01 98 */	beq lbl_80338378
/* 803381E4  48 00 02 5C */	b lbl_80338440
lbl_803381E8:
/* 803381E8  3C 60 62 76 */	lis r3, 0x6276 /* 0x62766131@ha */
/* 803381EC  38 03 61 31 */	addi r0, r3, 0x6131 /* 0x62766131@l */
/* 803381F0  7C 05 00 00 */	cmpw r5, r0
/* 803381F4  41 82 02 24 */	beq lbl_80338418
/* 803381F8  40 80 00 28 */	bge lbl_80338220
/* 803381FC  3C 60 62 74 */	lis r3, 0x6274 /* 0x62747031@ha */
/* 80338200  38 03 70 31 */	addi r0, r3, 0x7031 /* 0x62747031@l */
/* 80338204  7C 05 00 00 */	cmpw r5, r0
/* 80338208  41 82 01 98 */	beq lbl_803383A0
/* 8033820C  40 80 02 34 */	bge lbl_80338440
/* 80338210  38 03 6B 31 */	addi r0, r3, 0x6b31
/* 80338214  7C 05 00 00 */	cmpw r5, r0
/* 80338218  41 82 00 A4 */	beq lbl_803382BC
/* 8033821C  48 00 02 24 */	b lbl_80338440
lbl_80338220:
/* 80338220  3C 60 62 78 */	lis r3, 0x6278 /* 0x62786B31@ha */
/* 80338224  38 03 6B 31 */	addi r0, r3, 0x6B31 /* 0x62786B31@l */
/* 80338228  7C 05 00 00 */	cmpw r5, r0
/* 8033822C  41 82 00 FC */	beq lbl_80338328
/* 80338230  40 80 02 10 */	bge lbl_80338440
/* 80338234  38 03 61 31 */	addi r0, r3, 0x6131
/* 80338238  7C 05 00 00 */	cmpw r5, r0
/* 8033823C  41 82 01 B4 */	beq lbl_803383F0
/* 80338240  48 00 02 00 */	b lbl_80338440
lbl_80338244:
/* 80338244  38 61 00 60 */	addi r3, r1, 0x60
/* 80338248  48 00 02 99 */	bl __ct__19J3DAnmKeyLoader_v15Fv
/* 8033824C  38 61 00 60 */	addi r3, r1, 0x60
/* 80338250  7F C4 F3 78 */	mr r4, r30
/* 80338254  7F E5 FB 78 */	mr r5, r31
/* 80338258  48 00 0C 35 */	bl setResource__19J3DAnmKeyLoader_v15FP10J3DAnmBasePCv
/* 8033825C  38 61 00 60 */	addi r3, r1, 0x60
/* 80338260  38 80 FF FF */	li r4, -1
/* 80338264  48 00 02 99 */	bl __dt__19J3DAnmKeyLoader_v15Fv
/* 80338268  48 00 01 E8 */	b lbl_80338450
lbl_8033826C:
/* 8033826C  38 61 00 58 */	addi r3, r1, 0x58
/* 80338270  48 00 02 71 */	bl __ct__19J3DAnmKeyLoader_v15Fv
/* 80338274  38 61 00 58 */	addi r3, r1, 0x58
/* 80338278  7F C4 F3 78 */	mr r4, r30
/* 8033827C  7F E5 FB 78 */	mr r5, r31
/* 80338280  48 00 0C 0D */	bl setResource__19J3DAnmKeyLoader_v15FP10J3DAnmBasePCv
/* 80338284  38 61 00 58 */	addi r3, r1, 0x58
/* 80338288  38 80 FF FF */	li r4, -1
/* 8033828C  48 00 02 71 */	bl __dt__19J3DAnmKeyLoader_v15Fv
/* 80338290  48 00 01 C0 */	b lbl_80338450
lbl_80338294:
/* 80338294  38 61 00 50 */	addi r3, r1, 0x50
/* 80338298  48 00 02 49 */	bl __ct__19J3DAnmKeyLoader_v15Fv
/* 8033829C  38 61 00 50 */	addi r3, r1, 0x50
/* 803382A0  7F C4 F3 78 */	mr r4, r30
/* 803382A4  7F E5 FB 78 */	mr r5, r31
/* 803382A8  48 00 0B E5 */	bl setResource__19J3DAnmKeyLoader_v15FP10J3DAnmBasePCv
/* 803382AC  38 61 00 50 */	addi r3, r1, 0x50
/* 803382B0  38 80 FF FF */	li r4, -1
/* 803382B4  48 00 02 49 */	bl __dt__19J3DAnmKeyLoader_v15Fv
/* 803382B8  48 00 01 98 */	b lbl_80338450
lbl_803382BC:
/* 803382BC  38 61 00 48 */	addi r3, r1, 0x48
/* 803382C0  48 00 02 21 */	bl __ct__19J3DAnmKeyLoader_v15Fv
/* 803382C4  38 61 00 48 */	addi r3, r1, 0x48
/* 803382C8  7F C4 F3 78 */	mr r4, r30
/* 803382CC  7F E5 FB 78 */	mr r5, r31
/* 803382D0  48 00 0B BD */	bl setResource__19J3DAnmKeyLoader_v15FP10J3DAnmBasePCv
/* 803382D4  38 61 00 48 */	addi r3, r1, 0x48
/* 803382D8  38 80 FF FF */	li r4, -1
/* 803382DC  48 00 02 21 */	bl __dt__19J3DAnmKeyLoader_v15Fv
/* 803382E0  48 00 01 70 */	b lbl_80338450
lbl_803382E4:
/* 803382E4  38 61 00 40 */	addi r3, r1, 0x40
/* 803382E8  48 00 01 F9 */	bl __ct__19J3DAnmKeyLoader_v15Fv
/* 803382EC  7F C3 F3 78 */	mr r3, r30
/* 803382F0  81 9E 00 00 */	lwz r12, 0(r30)
/* 803382F4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 803382F8  7D 89 03 A6 */	mtctr r12
/* 803382FC  4E 80 04 21 */	bctrl 
/* 80338300  2C 03 00 05 */	cmpwi r3, 5
/* 80338304  40 82 00 14 */	bne lbl_80338318
/* 80338308  38 61 00 40 */	addi r3, r1, 0x40
/* 8033830C  7F C4 F3 78 */	mr r4, r30
/* 80338310  7F E5 FB 78 */	mr r5, r31
/* 80338314  48 00 0B 79 */	bl setResource__19J3DAnmKeyLoader_v15FP10J3DAnmBasePCv
lbl_80338318:
/* 80338318  38 61 00 40 */	addi r3, r1, 0x40
/* 8033831C  38 80 FF FF */	li r4, -1
/* 80338320  48 00 01 DD */	bl __dt__19J3DAnmKeyLoader_v15Fv
/* 80338324  48 00 01 2C */	b lbl_80338450
lbl_80338328:
/* 80338328  38 61 00 38 */	addi r3, r1, 0x38
/* 8033832C  48 00 01 B5 */	bl __ct__19J3DAnmKeyLoader_v15Fv
/* 80338330  38 61 00 38 */	addi r3, r1, 0x38
/* 80338334  7F C4 F3 78 */	mr r4, r30
/* 80338338  7F E5 FB 78 */	mr r5, r31
/* 8033833C  48 00 0B 51 */	bl setResource__19J3DAnmKeyLoader_v15FP10J3DAnmBasePCv
/* 80338340  38 61 00 38 */	addi r3, r1, 0x38
/* 80338344  38 80 FF FF */	li r4, -1
/* 80338348  48 00 01 B5 */	bl __dt__19J3DAnmKeyLoader_v15Fv
/* 8033834C  48 00 01 04 */	b lbl_80338450
lbl_80338350:
/* 80338350  38 61 00 30 */	addi r3, r1, 0x30
/* 80338354  48 00 01 15 */	bl __ct__20J3DAnmFullLoader_v15Fv
/* 80338358  38 61 00 30 */	addi r3, r1, 0x30
/* 8033835C  7F C4 F3 78 */	mr r4, r30
/* 80338360  7F E5 FB 78 */	mr r5, r31
/* 80338364  48 00 03 3D */	bl setResource__20J3DAnmFullLoader_v15FP10J3DAnmBasePCv
/* 80338368  38 61 00 30 */	addi r3, r1, 0x30
/* 8033836C  38 80 FF FF */	li r4, -1
/* 80338370  48 00 01 15 */	bl __dt__20J3DAnmFullLoader_v15Fv
/* 80338374  48 00 00 DC */	b lbl_80338450
lbl_80338378:
/* 80338378  38 61 00 28 */	addi r3, r1, 0x28
/* 8033837C  48 00 00 ED */	bl __ct__20J3DAnmFullLoader_v15Fv
/* 80338380  38 61 00 28 */	addi r3, r1, 0x28
/* 80338384  7F C4 F3 78 */	mr r4, r30
/* 80338388  7F E5 FB 78 */	mr r5, r31
/* 8033838C  48 00 03 15 */	bl setResource__20J3DAnmFullLoader_v15FP10J3DAnmBasePCv
/* 80338390  38 61 00 28 */	addi r3, r1, 0x28
/* 80338394  38 80 FF FF */	li r4, -1
/* 80338398  48 00 00 ED */	bl __dt__20J3DAnmFullLoader_v15Fv
/* 8033839C  48 00 00 B4 */	b lbl_80338450
lbl_803383A0:
/* 803383A0  38 61 00 20 */	addi r3, r1, 0x20
/* 803383A4  48 00 00 C5 */	bl __ct__20J3DAnmFullLoader_v15Fv
/* 803383A8  38 61 00 20 */	addi r3, r1, 0x20
/* 803383AC  7F C4 F3 78 */	mr r4, r30
/* 803383B0  7F E5 FB 78 */	mr r5, r31
/* 803383B4  48 00 02 ED */	bl setResource__20J3DAnmFullLoader_v15FP10J3DAnmBasePCv
/* 803383B8  38 61 00 20 */	addi r3, r1, 0x20
/* 803383BC  38 80 FF FF */	li r4, -1
/* 803383C0  48 00 00 C5 */	bl __dt__20J3DAnmFullLoader_v15Fv
/* 803383C4  48 00 00 8C */	b lbl_80338450
lbl_803383C8:
/* 803383C8  38 61 00 18 */	addi r3, r1, 0x18
/* 803383CC  48 00 00 9D */	bl __ct__20J3DAnmFullLoader_v15Fv
/* 803383D0  38 61 00 18 */	addi r3, r1, 0x18
/* 803383D4  7F C4 F3 78 */	mr r4, r30
/* 803383D8  7F E5 FB 78 */	mr r5, r31
/* 803383DC  48 00 02 C5 */	bl setResource__20J3DAnmFullLoader_v15FP10J3DAnmBasePCv
/* 803383E0  38 61 00 18 */	addi r3, r1, 0x18
/* 803383E4  38 80 FF FF */	li r4, -1
/* 803383E8  48 00 00 9D */	bl __dt__20J3DAnmFullLoader_v15Fv
/* 803383EC  48 00 00 64 */	b lbl_80338450
lbl_803383F0:
/* 803383F0  38 61 00 10 */	addi r3, r1, 0x10
/* 803383F4  48 00 00 75 */	bl __ct__20J3DAnmFullLoader_v15Fv
/* 803383F8  38 61 00 10 */	addi r3, r1, 0x10
/* 803383FC  7F C4 F3 78 */	mr r4, r30
/* 80338400  7F E5 FB 78 */	mr r5, r31
/* 80338404  48 00 02 9D */	bl setResource__20J3DAnmFullLoader_v15FP10J3DAnmBasePCv
/* 80338408  38 61 00 10 */	addi r3, r1, 0x10
/* 8033840C  38 80 FF FF */	li r4, -1
/* 80338410  48 00 00 75 */	bl __dt__20J3DAnmFullLoader_v15Fv
/* 80338414  48 00 00 3C */	b lbl_80338450
lbl_80338418:
/* 80338418  38 61 00 08 */	addi r3, r1, 8
/* 8033841C  48 00 00 4D */	bl __ct__20J3DAnmFullLoader_v15Fv
/* 80338420  38 61 00 08 */	addi r3, r1, 8
/* 80338424  7F C4 F3 78 */	mr r4, r30
/* 80338428  7F E5 FB 78 */	mr r5, r31
/* 8033842C  48 00 02 75 */	bl setResource__20J3DAnmFullLoader_v15FP10J3DAnmBasePCv
/* 80338430  38 61 00 08 */	addi r3, r1, 8
/* 80338434  38 80 FF FF */	li r4, -1
/* 80338438  48 00 00 4D */	bl __dt__20J3DAnmFullLoader_v15Fv
/* 8033843C  48 00 00 14 */	b lbl_80338450
lbl_80338440:
/* 80338440  3C 60 80 3A */	lis r3, J3DAnmLoader__stringBase0@ha
/* 80338444  38 63 21 30 */	addi r3, r3, J3DAnmLoader__stringBase0@l
/* 80338448  4C C6 31 82 */	crclr 6
/* 8033844C  4B CC E6 71 */	bl OSReport
lbl_80338450:
/* 80338450  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80338454  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80338458  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8033845C  7C 08 03 A6 */	mtlr r0
/* 80338460  38 21 00 70 */	addi r1, r1, 0x70
/* 80338464  4E 80 00 20 */	blr 
