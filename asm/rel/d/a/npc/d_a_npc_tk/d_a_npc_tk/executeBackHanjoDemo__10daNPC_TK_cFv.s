lbl_80B07610:
/* 80B07610  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80B07614  7C 08 02 A6 */	mflr r0
/* 80B07618  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80B0761C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80B07620  4B 85 AB BC */	b _savegpr_29
/* 80B07624  7C 7E 1B 78 */	mr r30, r3
/* 80B07628  3C 60 80 B1 */	lis r3, lit_3999@ha
/* 80B0762C  3B E3 C1 C4 */	addi r31, r3, lit_3999@l
/* 80B07630  38 61 00 68 */	addi r3, r1, 0x68
/* 80B07634  7F C4 F3 78 */	mr r4, r30
/* 80B07638  4B FF E5 99 */	bl getHanjoHandPos__10daNPC_TK_cFv
/* 80B0763C  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80B07640  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B07644  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80B07648  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B0764C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80B07650  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B07654  7F C3 F3 78 */	mr r3, r30
/* 80B07658  4B FF FA BD */	bl checkAttackDemo__10daNPC_TK_cFv
/* 80B0765C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B07660  40 82 0A F0 */	bne lbl_80B08150
/* 80B07664  80 1E 06 98 */	lwz r0, 0x698(r30)
/* 80B07668  2C 00 00 00 */	cmpwi r0, 0
/* 80B0766C  40 82 01 D4 */	bne lbl_80B07840
/* 80B07670  80 1E 06 94 */	lwz r0, 0x694(r30)
/* 80B07674  2C 00 00 02 */	cmpwi r0, 2
/* 80B07678  41 82 01 0C */	beq lbl_80B07784
/* 80B0767C  40 80 00 14 */	bge lbl_80B07690
/* 80B07680  2C 00 00 00 */	cmpwi r0, 0
/* 80B07684  41 82 00 18 */	beq lbl_80B0769C
/* 80B07688  40 80 00 CC */	bge lbl_80B07754
/* 80B0768C  48 00 01 A8 */	b lbl_80B07834
lbl_80B07690:
/* 80B07690  2C 00 00 04 */	cmpwi r0, 4
/* 80B07694  40 80 01 A0 */	bge lbl_80B07834
/* 80B07698  48 00 01 38 */	b lbl_80B077D0
lbl_80B0769C:
/* 80B0769C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B076A0  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B076A4  C0 1F 01 58 */	lfs f0, 0x158(r31)
/* 80B076A8  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80B076AC  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 80B076B0  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80B076B4  7F C3 F3 78 */	mr r3, r30
/* 80B076B8  4B FF A6 CD */	bl getMasterPointer__10daNPC_TK_cFv
/* 80B076BC  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 80B076C0  38 03 E0 00 */	addi r0, r3, -8192
/* 80B076C4  7C 1D 07 34 */	extsh r29, r0
/* 80B076C8  7F C3 F3 78 */	mr r3, r30
/* 80B076CC  4B FF A6 B9 */	bl getMasterPointer__10daNPC_TK_cFv
/* 80B076D0  7C 64 1B 78 */	mr r4, r3
/* 80B076D4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B076D8  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80B076DC  7F A5 EB 78 */	mr r5, r29
/* 80B076E0  38 C1 00 80 */	addi r6, r1, 0x80
/* 80B076E4  4B 76 96 DC */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B076E8  B3 BE 04 DE */	sth r29, 0x4de(r30)
/* 80B076EC  B3 BE 04 E6 */	sth r29, 0x4e6(r30)
/* 80B076F0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B076F4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80B076F8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80B076FC  80 1E 09 C4 */	lwz r0, 0x9c4(r30)
/* 80B07700  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B07704  90 1E 09 C4 */	stw r0, 0x9c4(r30)
/* 80B07708  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B0770C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B07710  C0 1F 01 60 */	lfs f0, 0x160(r31)
/* 80B07714  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80B07718  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 80B0771C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80B07720  38 7E 06 04 */	addi r3, r30, 0x604
/* 80B07724  38 81 00 74 */	addi r4, r1, 0x74
/* 80B07728  80 BE 06 38 */	lwz r5, 0x638(r30)
/* 80B0772C  A8 A5 04 E6 */	lha r5, 0x4e6(r5)
/* 80B07730  38 C1 00 80 */	addi r6, r1, 0x80
/* 80B07734  4B 76 96 8C */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B07738  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80B0773C  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 80B07740  38 00 00 3C */	li r0, 0x3c
/* 80B07744  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80B07748  38 00 00 69 */	li r0, 0x69
/* 80B0774C  90 1E 06 B4 */	stw r0, 0x6b4(r30)
/* 80B07750  48 00 00 E4 */	b lbl_80B07834
lbl_80B07754:
/* 80B07754  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80B07758  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B0775C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80B07760  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 80B07764  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80B07768  38 7E 06 04 */	addi r3, r30, 0x604
/* 80B0776C  38 81 00 74 */	addi r4, r1, 0x74
/* 80B07770  80 BE 06 38 */	lwz r5, 0x638(r30)
/* 80B07774  A8 A5 04 E6 */	lha r5, 0x4e6(r5)
/* 80B07778  38 C1 00 80 */	addi r6, r1, 0x80
/* 80B0777C  4B 76 96 44 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B07780  48 00 00 B4 */	b lbl_80B07834
lbl_80B07784:
/* 80B07784  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80B07788  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B0778C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80B07790  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80B07794  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 80B07798  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80B0779C  38 7E 06 04 */	addi r3, r30, 0x604
/* 80B077A0  38 81 00 74 */	addi r4, r1, 0x74
/* 80B077A4  80 BE 06 38 */	lwz r5, 0x638(r30)
/* 80B077A8  A8 A5 04 E6 */	lha r5, 0x4e6(r5)
/* 80B077AC  38 C1 00 80 */	addi r6, r1, 0x80
/* 80B077B0  4B 76 96 10 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B077B4  7F C3 F3 78 */	mr r3, r30
/* 80B077B8  38 80 00 05 */	li r4, 5
/* 80B077BC  38 A0 00 02 */	li r5, 2
/* 80B077C0  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80B077C4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B077C8  4B FF 9C D1 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B077CC  48 00 00 68 */	b lbl_80B07834
lbl_80B077D0:
/* 80B077D0  38 61 00 5C */	addi r3, r1, 0x5c
/* 80B077D4  7F C4 F3 78 */	mr r4, r30
/* 80B077D8  4B FF E3 F9 */	bl getHanjoHandPos__10daNPC_TK_cFv
/* 80B077DC  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80B077E0  D0 1E 06 04 */	stfs f0, 0x604(r30)
/* 80B077E4  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80B077E8  D0 1E 06 08 */	stfs f0, 0x608(r30)
/* 80B077EC  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80B077F0  D0 1E 06 0C */	stfs f0, 0x60c(r30)
/* 80B077F4  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050026@ha */
/* 80B077F8  38 03 00 26 */	addi r0, r3, 0x0026 /* 0x00050026@l */
/* 80B077FC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B07800  38 7E 05 74 */	addi r3, r30, 0x574
/* 80B07804  38 81 00 28 */	addi r4, r1, 0x28
/* 80B07808  38 A0 FF FF */	li r5, -1
/* 80B0780C  81 9E 05 74 */	lwz r12, 0x574(r30)
/* 80B07810  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B07814  7D 89 03 A6 */	mtctr r12
/* 80B07818  4E 80 04 21 */	bctrl 
/* 80B0781C  7F C3 F3 78 */	mr r3, r30
/* 80B07820  38 80 00 09 */	li r4, 9
/* 80B07824  38 A0 00 02 */	li r5, 2
/* 80B07828  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80B0782C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B07830  4B FF 9C 69 */	bl setBck__10daNPC_TK_cFiUcff
lbl_80B07834:
/* 80B07834  80 7E 06 98 */	lwz r3, 0x698(r30)
/* 80B07838  38 03 00 01 */	addi r0, r3, 1
/* 80B0783C  90 1E 06 98 */	stw r0, 0x698(r30)
lbl_80B07840:
/* 80B07840  38 61 00 50 */	addi r3, r1, 0x50
/* 80B07844  38 9E 06 04 */	addi r4, r30, 0x604
/* 80B07848  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80B0784C  4B 75 F2 E8 */	b __mi__4cXyzCFRC3Vec
/* 80B07850  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80B07854  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80B07858  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80B0785C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80B07860  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80B07864  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80B07868  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B0786C  38 9E 06 04 */	addi r4, r30, 0x604
/* 80B07870  4B 76 93 94 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B07874  7C 7D 1B 78 */	mr r29, r3
/* 80B07878  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80B0787C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B07880  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B07884  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B07888  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80B0788C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B07890  38 61 00 44 */	addi r3, r1, 0x44
/* 80B07894  4B 83 F8 A4 */	b PSVECSquareMag
/* 80B07898  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B0789C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B078A0  40 81 00 58 */	ble lbl_80B078F8
/* 80B078A4  FC 00 08 34 */	frsqrte f0, f1
/* 80B078A8  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80B078AC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B078B0  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80B078B4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B078B8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B078BC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B078C0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B078C4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B078C8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B078CC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B078D0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B078D4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B078D8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B078DC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B078E0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B078E4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B078E8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B078EC  FC 21 00 32 */	fmul f1, f1, f0
/* 80B078F0  FC 20 08 18 */	frsp f1, f1
/* 80B078F4  48 00 00 88 */	b lbl_80B0797C
lbl_80B078F8:
/* 80B078F8  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80B078FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B07900  40 80 00 10 */	bge lbl_80B07910
/* 80B07904  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B07908  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B0790C  48 00 00 70 */	b lbl_80B0797C
lbl_80B07910:
/* 80B07910  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80B07914  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80B07918  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B0791C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B07920  7C 03 00 00 */	cmpw r3, r0
/* 80B07924  41 82 00 14 */	beq lbl_80B07938
/* 80B07928  40 80 00 40 */	bge lbl_80B07968
/* 80B0792C  2C 03 00 00 */	cmpwi r3, 0
/* 80B07930  41 82 00 20 */	beq lbl_80B07950
/* 80B07934  48 00 00 34 */	b lbl_80B07968
lbl_80B07938:
/* 80B07938  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B0793C  41 82 00 0C */	beq lbl_80B07948
/* 80B07940  38 00 00 01 */	li r0, 1
/* 80B07944  48 00 00 28 */	b lbl_80B0796C
lbl_80B07948:
/* 80B07948  38 00 00 02 */	li r0, 2
/* 80B0794C  48 00 00 20 */	b lbl_80B0796C
lbl_80B07950:
/* 80B07950  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B07954  41 82 00 0C */	beq lbl_80B07960
/* 80B07958  38 00 00 05 */	li r0, 5
/* 80B0795C  48 00 00 10 */	b lbl_80B0796C
lbl_80B07960:
/* 80B07960  38 00 00 03 */	li r0, 3
/* 80B07964  48 00 00 08 */	b lbl_80B0796C
lbl_80B07968:
/* 80B07968  38 00 00 04 */	li r0, 4
lbl_80B0796C:
/* 80B0796C  2C 00 00 01 */	cmpwi r0, 1
/* 80B07970  40 82 00 0C */	bne lbl_80B0797C
/* 80B07974  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B07978  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B0797C:
/* 80B0797C  C0 41 00 90 */	lfs f2, 0x90(r1)
/* 80B07980  4B 75 FC F4 */	b cM_atan2s__Fff
/* 80B07984  80 1E 06 94 */	lwz r0, 0x694(r30)
/* 80B07988  2C 00 00 01 */	cmpwi r0, 1
/* 80B0798C  41 82 00 20 */	beq lbl_80B079AC
/* 80B07990  40 80 00 10 */	bge lbl_80B079A0
/* 80B07994  2C 00 00 00 */	cmpwi r0, 0
/* 80B07998  40 80 00 24 */	bge lbl_80B079BC
/* 80B0799C  48 00 07 B4 */	b lbl_80B08150
lbl_80B079A0:
/* 80B079A0  2C 00 00 04 */	cmpwi r0, 4
/* 80B079A4  40 80 07 AC */	bge lbl_80B08150
/* 80B079A8  48 00 02 DC */	b lbl_80B07C84
lbl_80B079AC:
/* 80B079AC  38 7E 06 78 */	addi r3, r30, 0x678
/* 80B079B0  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80B079B4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B079B8  4B 76 8D 88 */	b cLib_chaseF__FPfff
lbl_80B079BC:
/* 80B079BC  80 1E 06 B4 */	lwz r0, 0x6b4(r30)
/* 80B079C0  2C 00 00 01 */	cmpwi r0, 1
/* 80B079C4  40 82 00 2C */	bne lbl_80B079F0
/* 80B079C8  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050025@ha */
/* 80B079CC  38 03 00 25 */	addi r0, r3, 0x0025 /* 0x00050025@l */
/* 80B079D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B079D4  38 7E 05 74 */	addi r3, r30, 0x574
/* 80B079D8  38 81 00 24 */	addi r4, r1, 0x24
/* 80B079DC  38 A0 FF FF */	li r5, -1
/* 80B079E0  81 9E 05 74 */	lwz r12, 0x574(r30)
/* 80B079E4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B079E8  7D 89 03 A6 */	mtctr r12
/* 80B079EC  4E 80 04 21 */	bctrl 
lbl_80B079F0:
/* 80B079F0  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80B079F4  7F A4 EB 78 */	mr r4, r29
/* 80B079F8  38 A0 00 08 */	li r5, 8
/* 80B079FC  38 C0 10 00 */	li r6, 0x1000
/* 80B07A00  38 E0 01 00 */	li r7, 0x100
/* 80B07A04  4B 76 8B 3C */	b cLib_addCalcAngleS__FPsssss
/* 80B07A08  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80B07A0C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80B07A10  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 80B07A14  2C 00 00 00 */	cmpwi r0, 0
/* 80B07A18  40 82 07 38 */	bne lbl_80B08150
/* 80B07A1C  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80B07A20  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B07A24  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B07A28  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B07A2C  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80B07A30  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B07A34  38 61 00 38 */	addi r3, r1, 0x38
/* 80B07A38  4B 83 F7 00 */	b PSVECSquareMag
/* 80B07A3C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B07A40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B07A44  40 81 00 58 */	ble lbl_80B07A9C
/* 80B07A48  FC 00 08 34 */	frsqrte f0, f1
/* 80B07A4C  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80B07A50  FC 44 00 32 */	fmul f2, f4, f0
/* 80B07A54  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80B07A58  FC 00 00 32 */	fmul f0, f0, f0
/* 80B07A5C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B07A60  FC 03 00 28 */	fsub f0, f3, f0
/* 80B07A64  FC 02 00 32 */	fmul f0, f2, f0
/* 80B07A68  FC 44 00 32 */	fmul f2, f4, f0
/* 80B07A6C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B07A70  FC 01 00 32 */	fmul f0, f1, f0
/* 80B07A74  FC 03 00 28 */	fsub f0, f3, f0
/* 80B07A78  FC 02 00 32 */	fmul f0, f2, f0
/* 80B07A7C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B07A80  FC 00 00 32 */	fmul f0, f0, f0
/* 80B07A84  FC 01 00 32 */	fmul f0, f1, f0
/* 80B07A88  FC 03 00 28 */	fsub f0, f3, f0
/* 80B07A8C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B07A90  FC 21 00 32 */	fmul f1, f1, f0
/* 80B07A94  FC 20 08 18 */	frsp f1, f1
/* 80B07A98  48 00 00 88 */	b lbl_80B07B20
lbl_80B07A9C:
/* 80B07A9C  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80B07AA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B07AA4  40 80 00 10 */	bge lbl_80B07AB4
/* 80B07AA8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B07AAC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B07AB0  48 00 00 70 */	b lbl_80B07B20
lbl_80B07AB4:
/* 80B07AB4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80B07AB8  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80B07ABC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B07AC0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B07AC4  7C 03 00 00 */	cmpw r3, r0
/* 80B07AC8  41 82 00 14 */	beq lbl_80B07ADC
/* 80B07ACC  40 80 00 40 */	bge lbl_80B07B0C
/* 80B07AD0  2C 03 00 00 */	cmpwi r3, 0
/* 80B07AD4  41 82 00 20 */	beq lbl_80B07AF4
/* 80B07AD8  48 00 00 34 */	b lbl_80B07B0C
lbl_80B07ADC:
/* 80B07ADC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B07AE0  41 82 00 0C */	beq lbl_80B07AEC
/* 80B07AE4  38 00 00 01 */	li r0, 1
/* 80B07AE8  48 00 00 28 */	b lbl_80B07B10
lbl_80B07AEC:
/* 80B07AEC  38 00 00 02 */	li r0, 2
/* 80B07AF0  48 00 00 20 */	b lbl_80B07B10
lbl_80B07AF4:
/* 80B07AF4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B07AF8  41 82 00 0C */	beq lbl_80B07B04
/* 80B07AFC  38 00 00 05 */	li r0, 5
/* 80B07B00  48 00 00 10 */	b lbl_80B07B10
lbl_80B07B04:
/* 80B07B04  38 00 00 03 */	li r0, 3
/* 80B07B08  48 00 00 08 */	b lbl_80B07B10
lbl_80B07B0C:
/* 80B07B0C  38 00 00 04 */	li r0, 4
lbl_80B07B10:
/* 80B07B10  2C 00 00 01 */	cmpwi r0, 1
/* 80B07B14  40 82 00 0C */	bne lbl_80B07B20
/* 80B07B18  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B07B1C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B07B20:
/* 80B07B20  C0 41 00 90 */	lfs f2, 0x90(r1)
/* 80B07B24  4B 75 FB 50 */	b cM_atan2s__Fff
/* 80B07B28  7C 65 07 34 */	extsh r5, r3
/* 80B07B2C  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80B07B30  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 80B07B34  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 80B07B38  38 04 9A 20 */	addi r0, r4, sincosTable___5JMath@l
/* 80B07B3C  54 BD 04 38 */	rlwinm r29, r5, 0, 0x10, 0x1c
/* 80B07B40  7C 80 EA 14 */	add r4, r0, r29
/* 80B07B44  C0 04 00 04 */	lfs f0, 4(r4)
/* 80B07B48  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B07B4C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B07B50  4B 76 8B F0 */	b cLib_chaseF__FPfff
/* 80B07B54  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80B07B58  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 80B07B5C  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 80B07B60  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 80B07B64  7C 04 EC 2E */	lfsx f0, r4, r29
/* 80B07B68  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B07B6C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B07B70  4B 76 8B D0 */	b cLib_chaseF__FPfff
/* 80B07B74  38 61 00 8C */	addi r3, r1, 0x8c
/* 80B07B78  4B 83 F5 C0 */	b PSVECSquareMag
/* 80B07B7C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B07B80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B07B84  40 81 00 58 */	ble lbl_80B07BDC
/* 80B07B88  FC 00 08 34 */	frsqrte f0, f1
/* 80B07B8C  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80B07B90  FC 44 00 32 */	fmul f2, f4, f0
/* 80B07B94  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80B07B98  FC 00 00 32 */	fmul f0, f0, f0
/* 80B07B9C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B07BA0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B07BA4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B07BA8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B07BAC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B07BB0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B07BB4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B07BB8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B07BBC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B07BC0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B07BC4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B07BC8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B07BCC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B07BD0  FC 21 00 32 */	fmul f1, f1, f0
/* 80B07BD4  FC 20 08 18 */	frsp f1, f1
/* 80B07BD8  48 00 00 88 */	b lbl_80B07C60
lbl_80B07BDC:
/* 80B07BDC  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80B07BE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B07BE4  40 80 00 10 */	bge lbl_80B07BF4
/* 80B07BE8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B07BEC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B07BF0  48 00 00 70 */	b lbl_80B07C60
lbl_80B07BF4:
/* 80B07BF4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80B07BF8  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80B07BFC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B07C00  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B07C04  7C 03 00 00 */	cmpw r3, r0
/* 80B07C08  41 82 00 14 */	beq lbl_80B07C1C
/* 80B07C0C  40 80 00 40 */	bge lbl_80B07C4C
/* 80B07C10  2C 03 00 00 */	cmpwi r3, 0
/* 80B07C14  41 82 00 20 */	beq lbl_80B07C34
/* 80B07C18  48 00 00 34 */	b lbl_80B07C4C
lbl_80B07C1C:
/* 80B07C1C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B07C20  41 82 00 0C */	beq lbl_80B07C2C
/* 80B07C24  38 00 00 01 */	li r0, 1
/* 80B07C28  48 00 00 28 */	b lbl_80B07C50
lbl_80B07C2C:
/* 80B07C2C  38 00 00 02 */	li r0, 2
/* 80B07C30  48 00 00 20 */	b lbl_80B07C50
lbl_80B07C34:
/* 80B07C34  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B07C38  41 82 00 0C */	beq lbl_80B07C44
/* 80B07C3C  38 00 00 05 */	li r0, 5
/* 80B07C40  48 00 00 10 */	b lbl_80B07C50
lbl_80B07C44:
/* 80B07C44  38 00 00 03 */	li r0, 3
/* 80B07C48  48 00 00 08 */	b lbl_80B07C50
lbl_80B07C4C:
/* 80B07C4C  38 00 00 04 */	li r0, 4
lbl_80B07C50:
/* 80B07C50  2C 00 00 01 */	cmpwi r0, 1
/* 80B07C54  40 82 00 0C */	bne lbl_80B07C60
/* 80B07C58  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B07C5C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B07C60:
/* 80B07C60  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80B07C64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B07C68  40 80 04 E8 */	bge lbl_80B08150
/* 80B07C6C  80 7E 06 94 */	lwz r3, 0x694(r30)
/* 80B07C70  38 03 00 01 */	addi r0, r3, 1
/* 80B07C74  90 1E 06 94 */	stw r0, 0x694(r30)
/* 80B07C78  38 00 00 00 */	li r0, 0
/* 80B07C7C  90 1E 06 98 */	stw r0, 0x698(r30)
/* 80B07C80  48 00 04 D0 */	b lbl_80B08150
lbl_80B07C84:
/* 80B07C84  38 7E 06 78 */	addi r3, r30, 0x678
/* 80B07C88  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80B07C8C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B07C90  4B 76 8A B0 */	b cLib_chaseF__FPfff
/* 80B07C94  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80B07C98  7F A4 EB 78 */	mr r4, r29
/* 80B07C9C  38 A0 00 08 */	li r5, 8
/* 80B07CA0  38 C0 10 00 */	li r6, 0x1000
/* 80B07CA4  38 E0 01 00 */	li r7, 0x100
/* 80B07CA8  4B 76 88 98 */	b cLib_addCalcAngleS__FPsssss
/* 80B07CAC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80B07CB0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80B07CB4  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80B07CB8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B07CBC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B07CC0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B07CC4  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80B07CC8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B07CCC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80B07CD0  4B 83 F4 68 */	b PSVECSquareMag
/* 80B07CD4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B07CD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B07CDC  40 81 00 58 */	ble lbl_80B07D34
/* 80B07CE0  FC 00 08 34 */	frsqrte f0, f1
/* 80B07CE4  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80B07CE8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B07CEC  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80B07CF0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B07CF4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B07CF8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B07CFC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B07D00  FC 44 00 32 */	fmul f2, f4, f0
/* 80B07D04  FC 00 00 32 */	fmul f0, f0, f0
/* 80B07D08  FC 01 00 32 */	fmul f0, f1, f0
/* 80B07D0C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B07D10  FC 02 00 32 */	fmul f0, f2, f0
/* 80B07D14  FC 44 00 32 */	fmul f2, f4, f0
/* 80B07D18  FC 00 00 32 */	fmul f0, f0, f0
/* 80B07D1C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B07D20  FC 03 00 28 */	fsub f0, f3, f0
/* 80B07D24  FC 02 00 32 */	fmul f0, f2, f0
/* 80B07D28  FC 21 00 32 */	fmul f1, f1, f0
/* 80B07D2C  FC 20 08 18 */	frsp f1, f1
/* 80B07D30  48 00 00 88 */	b lbl_80B07DB8
lbl_80B07D34:
/* 80B07D34  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80B07D38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B07D3C  40 80 00 10 */	bge lbl_80B07D4C
/* 80B07D40  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B07D44  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B07D48  48 00 00 70 */	b lbl_80B07DB8
lbl_80B07D4C:
/* 80B07D4C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B07D50  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B07D54  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B07D58  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B07D5C  7C 03 00 00 */	cmpw r3, r0
/* 80B07D60  41 82 00 14 */	beq lbl_80B07D74
/* 80B07D64  40 80 00 40 */	bge lbl_80B07DA4
/* 80B07D68  2C 03 00 00 */	cmpwi r3, 0
/* 80B07D6C  41 82 00 20 */	beq lbl_80B07D8C
/* 80B07D70  48 00 00 34 */	b lbl_80B07DA4
lbl_80B07D74:
/* 80B07D74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B07D78  41 82 00 0C */	beq lbl_80B07D84
/* 80B07D7C  38 00 00 01 */	li r0, 1
/* 80B07D80  48 00 00 28 */	b lbl_80B07DA8
lbl_80B07D84:
/* 80B07D84  38 00 00 02 */	li r0, 2
/* 80B07D88  48 00 00 20 */	b lbl_80B07DA8
lbl_80B07D8C:
/* 80B07D8C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B07D90  41 82 00 0C */	beq lbl_80B07D9C
/* 80B07D94  38 00 00 05 */	li r0, 5
/* 80B07D98  48 00 00 10 */	b lbl_80B07DA8
lbl_80B07D9C:
/* 80B07D9C  38 00 00 03 */	li r0, 3
/* 80B07DA0  48 00 00 08 */	b lbl_80B07DA8
lbl_80B07DA4:
/* 80B07DA4  38 00 00 04 */	li r0, 4
lbl_80B07DA8:
/* 80B07DA8  2C 00 00 01 */	cmpwi r0, 1
/* 80B07DAC  40 82 00 0C */	bne lbl_80B07DB8
/* 80B07DB0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B07DB4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B07DB8:
/* 80B07DB8  C0 41 00 90 */	lfs f2, 0x90(r1)
/* 80B07DBC  4B 75 F8 B8 */	b cM_atan2s__Fff
/* 80B07DC0  7C 65 07 34 */	extsh r5, r3
/* 80B07DC4  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80B07DC8  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 80B07DCC  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 80B07DD0  38 04 9A 20 */	addi r0, r4, sincosTable___5JMath@l
/* 80B07DD4  54 BD 04 38 */	rlwinm r29, r5, 0, 0x10, 0x1c
/* 80B07DD8  7C 80 EA 14 */	add r4, r0, r29
/* 80B07DDC  C0 04 00 04 */	lfs f0, 4(r4)
/* 80B07DE0  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B07DE4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B07DE8  4B 76 89 58 */	b cLib_chaseF__FPfff
/* 80B07DEC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80B07DF0  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 80B07DF4  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 80B07DF8  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 80B07DFC  7C 04 EC 2E */	lfsx f0, r4, r29
/* 80B07E00  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B07E04  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B07E08  4B 76 89 38 */	b cLib_chaseF__FPfff
/* 80B07E0C  80 1E 06 94 */	lwz r0, 0x694(r30)
/* 80B07E10  2C 00 00 02 */	cmpwi r0, 2
/* 80B07E14  40 82 02 34 */	bne lbl_80B08048
/* 80B07E18  38 61 00 8C */	addi r3, r1, 0x8c
/* 80B07E1C  4B 83 F3 1C */	b PSVECSquareMag
/* 80B07E20  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B07E24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B07E28  40 81 00 58 */	ble lbl_80B07E80
/* 80B07E2C  FC 00 08 34 */	frsqrte f0, f1
/* 80B07E30  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80B07E34  FC 44 00 32 */	fmul f2, f4, f0
/* 80B07E38  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80B07E3C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B07E40  FC 01 00 32 */	fmul f0, f1, f0
/* 80B07E44  FC 03 00 28 */	fsub f0, f3, f0
/* 80B07E48  FC 02 00 32 */	fmul f0, f2, f0
/* 80B07E4C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B07E50  FC 00 00 32 */	fmul f0, f0, f0
/* 80B07E54  FC 01 00 32 */	fmul f0, f1, f0
/* 80B07E58  FC 03 00 28 */	fsub f0, f3, f0
/* 80B07E5C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B07E60  FC 44 00 32 */	fmul f2, f4, f0
/* 80B07E64  FC 00 00 32 */	fmul f0, f0, f0
/* 80B07E68  FC 01 00 32 */	fmul f0, f1, f0
/* 80B07E6C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B07E70  FC 02 00 32 */	fmul f0, f2, f0
/* 80B07E74  FC 21 00 32 */	fmul f1, f1, f0
/* 80B07E78  FC 20 08 18 */	frsp f1, f1
/* 80B07E7C  48 00 00 88 */	b lbl_80B07F04
lbl_80B07E80:
/* 80B07E80  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80B07E84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B07E88  40 80 00 10 */	bge lbl_80B07E98
/* 80B07E8C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B07E90  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B07E94  48 00 00 70 */	b lbl_80B07F04
lbl_80B07E98:
/* 80B07E98  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B07E9C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80B07EA0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B07EA4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B07EA8  7C 03 00 00 */	cmpw r3, r0
/* 80B07EAC  41 82 00 14 */	beq lbl_80B07EC0
/* 80B07EB0  40 80 00 40 */	bge lbl_80B07EF0
/* 80B07EB4  2C 03 00 00 */	cmpwi r3, 0
/* 80B07EB8  41 82 00 20 */	beq lbl_80B07ED8
/* 80B07EBC  48 00 00 34 */	b lbl_80B07EF0
lbl_80B07EC0:
/* 80B07EC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B07EC4  41 82 00 0C */	beq lbl_80B07ED0
/* 80B07EC8  38 00 00 01 */	li r0, 1
/* 80B07ECC  48 00 00 28 */	b lbl_80B07EF4
lbl_80B07ED0:
/* 80B07ED0  38 00 00 02 */	li r0, 2
/* 80B07ED4  48 00 00 20 */	b lbl_80B07EF4
lbl_80B07ED8:
/* 80B07ED8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B07EDC  41 82 00 0C */	beq lbl_80B07EE8
/* 80B07EE0  38 00 00 05 */	li r0, 5
/* 80B07EE4  48 00 00 10 */	b lbl_80B07EF4
lbl_80B07EE8:
/* 80B07EE8  38 00 00 03 */	li r0, 3
/* 80B07EEC  48 00 00 08 */	b lbl_80B07EF4
lbl_80B07EF0:
/* 80B07EF0  38 00 00 04 */	li r0, 4
lbl_80B07EF4:
/* 80B07EF4  2C 00 00 01 */	cmpwi r0, 1
/* 80B07EF8  40 82 00 0C */	bne lbl_80B07F04
/* 80B07EFC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B07F00  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B07F04:
/* 80B07F04  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80B07F08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B07F0C  40 80 02 44 */	bge lbl_80B08150
/* 80B07F10  7F C3 F3 78 */	mr r3, r30
/* 80B07F14  38 80 00 07 */	li r4, 7
/* 80B07F18  4B FF 96 25 */	bl checkBck__10daNPC_TK_cFi
/* 80B07F1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B07F20  40 82 00 1C */	bne lbl_80B07F3C
/* 80B07F24  7F C3 F3 78 */	mr r3, r30
/* 80B07F28  38 80 00 07 */	li r4, 7
/* 80B07F2C  38 A0 00 02 */	li r5, 2
/* 80B07F30  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80B07F34  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B07F38  4B FF 95 61 */	bl setBck__10daNPC_TK_cFiUcff
lbl_80B07F3C:
/* 80B07F3C  38 61 00 8C */	addi r3, r1, 0x8c
/* 80B07F40  4B 83 F1 F8 */	b PSVECSquareMag
/* 80B07F44  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B07F48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B07F4C  40 81 00 58 */	ble lbl_80B07FA4
/* 80B07F50  FC 00 08 34 */	frsqrte f0, f1
/* 80B07F54  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80B07F58  FC 44 00 32 */	fmul f2, f4, f0
/* 80B07F5C  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80B07F60  FC 00 00 32 */	fmul f0, f0, f0
/* 80B07F64  FC 01 00 32 */	fmul f0, f1, f0
/* 80B07F68  FC 03 00 28 */	fsub f0, f3, f0
/* 80B07F6C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B07F70  FC 44 00 32 */	fmul f2, f4, f0
/* 80B07F74  FC 00 00 32 */	fmul f0, f0, f0
/* 80B07F78  FC 01 00 32 */	fmul f0, f1, f0
/* 80B07F7C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B07F80  FC 02 00 32 */	fmul f0, f2, f0
/* 80B07F84  FC 44 00 32 */	fmul f2, f4, f0
/* 80B07F88  FC 00 00 32 */	fmul f0, f0, f0
/* 80B07F8C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B07F90  FC 03 00 28 */	fsub f0, f3, f0
/* 80B07F94  FC 02 00 32 */	fmul f0, f2, f0
/* 80B07F98  FC 21 00 32 */	fmul f1, f1, f0
/* 80B07F9C  FC 20 08 18 */	frsp f1, f1
/* 80B07FA0  48 00 00 88 */	b lbl_80B08028
lbl_80B07FA4:
/* 80B07FA4  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80B07FA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B07FAC  40 80 00 10 */	bge lbl_80B07FBC
/* 80B07FB0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B07FB4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B07FB8  48 00 00 70 */	b lbl_80B08028
lbl_80B07FBC:
/* 80B07FBC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B07FC0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B07FC4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B07FC8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B07FCC  7C 03 00 00 */	cmpw r3, r0
/* 80B07FD0  41 82 00 14 */	beq lbl_80B07FE4
/* 80B07FD4  40 80 00 40 */	bge lbl_80B08014
/* 80B07FD8  2C 03 00 00 */	cmpwi r3, 0
/* 80B07FDC  41 82 00 20 */	beq lbl_80B07FFC
/* 80B07FE0  48 00 00 34 */	b lbl_80B08014
lbl_80B07FE4:
/* 80B07FE4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B07FE8  41 82 00 0C */	beq lbl_80B07FF4
/* 80B07FEC  38 00 00 01 */	li r0, 1
/* 80B07FF0  48 00 00 28 */	b lbl_80B08018
lbl_80B07FF4:
/* 80B07FF4  38 00 00 02 */	li r0, 2
/* 80B07FF8  48 00 00 20 */	b lbl_80B08018
lbl_80B07FFC:
/* 80B07FFC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B08000  41 82 00 0C */	beq lbl_80B0800C
/* 80B08004  38 00 00 05 */	li r0, 5
/* 80B08008  48 00 00 10 */	b lbl_80B08018
lbl_80B0800C:
/* 80B0800C  38 00 00 03 */	li r0, 3
/* 80B08010  48 00 00 08 */	b lbl_80B08018
lbl_80B08014:
/* 80B08014  38 00 00 04 */	li r0, 4
lbl_80B08018:
/* 80B08018  2C 00 00 01 */	cmpwi r0, 1
/* 80B0801C  40 82 00 0C */	bne lbl_80B08028
/* 80B08020  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B08024  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B08028:
/* 80B08028  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80B0802C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B08030  40 80 01 20 */	bge lbl_80B08150
/* 80B08034  38 00 00 03 */	li r0, 3
/* 80B08038  90 1E 06 94 */	stw r0, 0x694(r30)
/* 80B0803C  38 00 00 00 */	li r0, 0
/* 80B08040  90 1E 06 98 */	stw r0, 0x698(r30)
/* 80B08044  48 00 01 0C */	b lbl_80B08150
lbl_80B08048:
/* 80B08048  38 61 00 8C */	addi r3, r1, 0x8c
/* 80B0804C  4B 83 F0 EC */	b PSVECSquareMag
/* 80B08050  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B08054  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B08058  40 81 00 58 */	ble lbl_80B080B0
/* 80B0805C  FC 00 08 34 */	frsqrte f0, f1
/* 80B08060  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80B08064  FC 44 00 32 */	fmul f2, f4, f0
/* 80B08068  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80B0806C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B08070  FC 01 00 32 */	fmul f0, f1, f0
/* 80B08074  FC 03 00 28 */	fsub f0, f3, f0
/* 80B08078  FC 02 00 32 */	fmul f0, f2, f0
/* 80B0807C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B08080  FC 00 00 32 */	fmul f0, f0, f0
/* 80B08084  FC 01 00 32 */	fmul f0, f1, f0
/* 80B08088  FC 03 00 28 */	fsub f0, f3, f0
/* 80B0808C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B08090  FC 44 00 32 */	fmul f2, f4, f0
/* 80B08094  FC 00 00 32 */	fmul f0, f0, f0
/* 80B08098  FC 01 00 32 */	fmul f0, f1, f0
/* 80B0809C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B080A0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B080A4  FC 21 00 32 */	fmul f1, f1, f0
/* 80B080A8  FC 20 08 18 */	frsp f1, f1
/* 80B080AC  48 00 00 88 */	b lbl_80B08134
lbl_80B080B0:
/* 80B080B0  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80B080B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B080B8  40 80 00 10 */	bge lbl_80B080C8
/* 80B080BC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B080C0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B080C4  48 00 00 70 */	b lbl_80B08134
lbl_80B080C8:
/* 80B080C8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B080CC  80 81 00 08 */	lwz r4, 8(r1)
/* 80B080D0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B080D4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B080D8  7C 03 00 00 */	cmpw r3, r0
/* 80B080DC  41 82 00 14 */	beq lbl_80B080F0
/* 80B080E0  40 80 00 40 */	bge lbl_80B08120
/* 80B080E4  2C 03 00 00 */	cmpwi r3, 0
/* 80B080E8  41 82 00 20 */	beq lbl_80B08108
/* 80B080EC  48 00 00 34 */	b lbl_80B08120
lbl_80B080F0:
/* 80B080F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B080F4  41 82 00 0C */	beq lbl_80B08100
/* 80B080F8  38 00 00 01 */	li r0, 1
/* 80B080FC  48 00 00 28 */	b lbl_80B08124
lbl_80B08100:
/* 80B08100  38 00 00 02 */	li r0, 2
/* 80B08104  48 00 00 20 */	b lbl_80B08124
lbl_80B08108:
/* 80B08108  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B0810C  41 82 00 0C */	beq lbl_80B08118
/* 80B08110  38 00 00 05 */	li r0, 5
/* 80B08114  48 00 00 10 */	b lbl_80B08124
lbl_80B08118:
/* 80B08118  38 00 00 03 */	li r0, 3
/* 80B0811C  48 00 00 08 */	b lbl_80B08124
lbl_80B08120:
/* 80B08120  38 00 00 04 */	li r0, 4
lbl_80B08124:
/* 80B08124  2C 00 00 01 */	cmpwi r0, 1
/* 80B08128  40 82 00 0C */	bne lbl_80B08134
/* 80B0812C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B08130  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B08134:
/* 80B08134  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80B08138  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0813C  4C 40 13 82 */	cror 2, 0, 2
/* 80B08140  40 82 00 10 */	bne lbl_80B08150
/* 80B08144  7F C3 F3 78 */	mr r3, r30
/* 80B08148  38 80 00 06 */	li r4, 6
/* 80B0814C  4B FF 97 2D */	bl setActionMode__10daNPC_TK_cFi
lbl_80B08150:
/* 80B08150  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80B08154  4B 85 A0 D4 */	b _restgpr_29
/* 80B08158  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80B0815C  7C 08 03 A6 */	mtlr r0
/* 80B08160  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80B08164  4E 80 00 20 */	blr 
