lbl_80050480:
/* 80050480  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80050484  7C 08 02 A6 */	mflr r0
/* 80050488  90 01 00 74 */	stw r0, 0x74(r1)
/* 8005048C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80050490  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80050494  3C 60 80 42 */	lis r3, lit_4053@ha /* 0x80424710@ha */
/* 80050498  3B E3 47 10 */	addi r31, r3, lit_4053@l /* 0x80424710@l */
/* 8005049C  3C 60 80 3B */	lis r3, l_lifeBallColor@ha /* 0x803A8308@ha */
/* 800504A0  3B C3 83 08 */	addi r30, r3, l_lifeBallColor@l /* 0x803A8308@l */
/* 800504A4  3C 60 80 3B */	lis r3, __vt__18JPAEmitterCallBack@ha /* 0x803A8578@ha */
/* 800504A8  38 03 85 78 */	addi r0, r3, __vt__18JPAEmitterCallBack@l /* 0x803A8578@l */
/* 800504AC  90 0D 89 10 */	stw r0, mEcallback__18dPa_modelEcallBack(r13)
/* 800504B0  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 800504B4  38 03 85 54 */	addi r0, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 800504B8  90 0D 89 10 */	stw r0, mEcallback__18dPa_modelEcallBack(r13)
/* 800504BC  38 1E 01 80 */	addi r0, r30, 0x180
/* 800504C0  90 0D 89 10 */	stw r0, mEcallback__18dPa_modelEcallBack(r13)
/* 800504C4  38 00 00 00 */	li r0, 0
/* 800504C8  90 0D 89 18 */	stw r0, mModel__18dPa_modelEcallBack(r13)
/* 800504CC  38 6D 89 10 */	la r3, mEcallback__18dPa_modelEcallBack(r13) /* 80450E90-_SDA_BASE_ */
/* 800504D0  3C 80 80 05 */	lis r4, __dt__18dPa_modelEcallBackFv@ha /* 0x80050378@ha */
/* 800504D4  38 84 03 78 */	addi r4, r4, __dt__18dPa_modelEcallBackFv@l /* 0x80050378@l */
/* 800504D8  38 BF 00 00 */	addi r5, r31, 0
/* 800504DC  48 31 17 49 */	bl __register_global_object
/* 800504E0  3C 60 80 3A */	lis r3, __vt__19JPAParticleCallBack@ha /* 0x803A357C@ha */
/* 800504E4  38 03 35 7C */	addi r0, r3, __vt__19JPAParticleCallBack@l /* 0x803A357C@l */
/* 800504E8  90 0D 89 14 */	stw r0, mPcallback__18dPa_modelEcallBack(r13)
/* 800504EC  38 1E 01 A4 */	addi r0, r30, 0x1a4
/* 800504F0  90 0D 89 14 */	stw r0, mPcallback__18dPa_modelEcallBack(r13)
/* 800504F4  38 6D 89 14 */	la r3, mPcallback__18dPa_modelEcallBack(r13) /* 80450E94-_SDA_BASE_ */
/* 800504F8  3C 80 80 05 */	lis r4, __dt__18dPa_modelPcallBackFv@ha /* 0x80050038@ha */
/* 800504FC  38 84 00 38 */	addi r4, r4, __dt__18dPa_modelPcallBackFv@l /* 0x80050038@l */
/* 80050500  38 BF 00 0C */	addi r5, r31, 0xc
/* 80050504  48 31 17 21 */	bl __register_global_object
/* 80050508  3C 60 80 3B */	lis r3, __vt__18JPAEmitterCallBack@ha /* 0x803A8578@ha */
/* 8005050C  38 A3 85 78 */	addi r5, r3, __vt__18JPAEmitterCallBack@l /* 0x803A8578@l */
/* 80050510  90 A1 00 58 */	stw r5, 0x58(r1)
/* 80050514  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 80050518  38 83 85 54 */	addi r4, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 8005051C  90 81 00 58 */	stw r4, 0x58(r1)
/* 80050520  38 7E 01 5C */	addi r3, r30, 0x15c
/* 80050524  90 61 00 58 */	stw r3, 0x58(r1)
/* 80050528  38 00 00 00 */	li r0, 0
/* 8005052C  98 01 00 5C */	stb r0, 0x5c(r1)
/* 80050530  90 BF 00 84 */	stw r5, 0x84(r31)
/* 80050534  90 9F 00 84 */	stw r4, 0x84(r31)
/* 80050538  90 7F 00 84 */	stw r3, 0x84(r31)
/* 8005053C  38 7F 00 84 */	addi r3, r31, 0x84
/* 80050540  98 03 00 04 */	stb r0, 4(r3)
/* 80050544  3C 80 80 05 */	lis r4, __dt__22dPa_selectTexEcallBackFv@ha /* 0x8004FF8C@ha */
/* 80050548  38 84 FF 8C */	addi r4, r4, __dt__22dPa_selectTexEcallBackFv@l /* 0x8004FF8C@l */
/* 8005054C  38 BF 00 24 */	addi r5, r31, 0x24
/* 80050550  48 31 16 D5 */	bl __register_global_object
/* 80050554  38 1E 01 5C */	addi r0, r30, 0x15c
/* 80050558  90 01 00 58 */	stw r0, 0x58(r1)
/* 8005055C  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 80050560  39 83 85 54 */	addi r12, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 80050564  91 81 00 58 */	stw r12, 0x58(r1)
/* 80050568  38 61 00 58 */	addi r3, r1, 0x58
/* 8005056C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80050570  7D 89 03 A6 */	mtctr r12
/* 80050574  4E 80 04 21 */	bctrl 
/* 80050578  38 61 00 58 */	addi r3, r1, 0x58
/* 8005057C  38 80 00 00 */	li r4, 0
/* 80050580  48 22 E1 25 */	bl __dt__18JPAEmitterCallBackFv
/* 80050584  3C 60 80 3B */	lis r3, __vt__18JPAEmitterCallBack@ha /* 0x803A8578@ha */
/* 80050588  38 C3 85 78 */	addi r6, r3, __vt__18JPAEmitterCallBack@l /* 0x803A8578@l */
/* 8005058C  90 C1 00 50 */	stw r6, 0x50(r1)
/* 80050590  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 80050594  38 A3 85 54 */	addi r5, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 80050598  90 A1 00 50 */	stw r5, 0x50(r1)
/* 8005059C  38 9E 01 5C */	addi r4, r30, 0x15c
/* 800505A0  90 81 00 50 */	stw r4, 0x50(r1)
/* 800505A4  38 00 00 01 */	li r0, 1
/* 800505A8  98 01 00 54 */	stb r0, 0x54(r1)
/* 800505AC  38 7F 00 84 */	addi r3, r31, 0x84
/* 800505B0  90 C3 00 08 */	stw r6, 8(r3)
/* 800505B4  90 A3 00 08 */	stw r5, 8(r3)
/* 800505B8  90 83 00 08 */	stw r4, 8(r3)
/* 800505BC  98 03 00 0C */	stb r0, 0xc(r3)
/* 800505C0  38 63 00 08 */	addi r3, r3, 8
/* 800505C4  3C 80 80 05 */	lis r4, __dt__22dPa_selectTexEcallBackFv@ha /* 0x8004FF8C@ha */
/* 800505C8  38 84 FF 8C */	addi r4, r4, __dt__22dPa_selectTexEcallBackFv@l /* 0x8004FF8C@l */
/* 800505CC  38 BF 00 30 */	addi r5, r31, 0x30
/* 800505D0  48 31 16 55 */	bl __register_global_object
/* 800505D4  38 1E 01 5C */	addi r0, r30, 0x15c
/* 800505D8  90 01 00 50 */	stw r0, 0x50(r1)
/* 800505DC  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 800505E0  39 83 85 54 */	addi r12, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 800505E4  91 81 00 50 */	stw r12, 0x50(r1)
/* 800505E8  38 61 00 50 */	addi r3, r1, 0x50
/* 800505EC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 800505F0  7D 89 03 A6 */	mtctr r12
/* 800505F4  4E 80 04 21 */	bctrl 
/* 800505F8  38 61 00 50 */	addi r3, r1, 0x50
/* 800505FC  38 80 00 00 */	li r4, 0
/* 80050600  48 22 E0 A5 */	bl __dt__18JPAEmitterCallBackFv
/* 80050604  3C 60 80 3B */	lis r3, __vt__18JPAEmitterCallBack@ha /* 0x803A8578@ha */
/* 80050608  38 C3 85 78 */	addi r6, r3, __vt__18JPAEmitterCallBack@l /* 0x803A8578@l */
/* 8005060C  90 C1 00 48 */	stw r6, 0x48(r1)
/* 80050610  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 80050614  38 A3 85 54 */	addi r5, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 80050618  90 A1 00 48 */	stw r5, 0x48(r1)
/* 8005061C  38 9E 01 5C */	addi r4, r30, 0x15c
/* 80050620  90 81 00 48 */	stw r4, 0x48(r1)
/* 80050624  38 00 00 02 */	li r0, 2
/* 80050628  98 01 00 4C */	stb r0, 0x4c(r1)
/* 8005062C  38 7F 00 84 */	addi r3, r31, 0x84
/* 80050630  90 C3 00 10 */	stw r6, 0x10(r3)
/* 80050634  90 A3 00 10 */	stw r5, 0x10(r3)
/* 80050638  90 83 00 10 */	stw r4, 0x10(r3)
/* 8005063C  98 03 00 14 */	stb r0, 0x14(r3)
/* 80050640  38 63 00 10 */	addi r3, r3, 0x10
/* 80050644  3C 80 80 05 */	lis r4, __dt__22dPa_selectTexEcallBackFv@ha /* 0x8004FF8C@ha */
/* 80050648  38 84 FF 8C */	addi r4, r4, __dt__22dPa_selectTexEcallBackFv@l /* 0x8004FF8C@l */
/* 8005064C  38 BF 00 3C */	addi r5, r31, 0x3c
/* 80050650  48 31 15 D5 */	bl __register_global_object
/* 80050654  38 1E 01 5C */	addi r0, r30, 0x15c
/* 80050658  90 01 00 48 */	stw r0, 0x48(r1)
/* 8005065C  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 80050660  39 83 85 54 */	addi r12, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 80050664  91 81 00 48 */	stw r12, 0x48(r1)
/* 80050668  38 61 00 48 */	addi r3, r1, 0x48
/* 8005066C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80050670  7D 89 03 A6 */	mtctr r12
/* 80050674  4E 80 04 21 */	bctrl 
/* 80050678  38 61 00 48 */	addi r3, r1, 0x48
/* 8005067C  38 80 00 00 */	li r4, 0
/* 80050680  48 22 E0 25 */	bl __dt__18JPAEmitterCallBackFv
/* 80050684  3C 60 80 3B */	lis r3, __vt__18JPAEmitterCallBack@ha /* 0x803A8578@ha */
/* 80050688  38 C3 85 78 */	addi r6, r3, __vt__18JPAEmitterCallBack@l /* 0x803A8578@l */
/* 8005068C  90 C1 00 40 */	stw r6, 0x40(r1)
/* 80050690  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 80050694  38 A3 85 54 */	addi r5, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 80050698  90 A1 00 40 */	stw r5, 0x40(r1)
/* 8005069C  38 9E 01 5C */	addi r4, r30, 0x15c
/* 800506A0  90 81 00 40 */	stw r4, 0x40(r1)
/* 800506A4  38 00 00 03 */	li r0, 3
/* 800506A8  98 01 00 44 */	stb r0, 0x44(r1)
/* 800506AC  38 7F 00 84 */	addi r3, r31, 0x84
/* 800506B0  90 C3 00 18 */	stw r6, 0x18(r3)
/* 800506B4  90 A3 00 18 */	stw r5, 0x18(r3)
/* 800506B8  90 83 00 18 */	stw r4, 0x18(r3)
/* 800506BC  98 03 00 1C */	stb r0, 0x1c(r3)
/* 800506C0  38 63 00 18 */	addi r3, r3, 0x18
/* 800506C4  3C 80 80 05 */	lis r4, __dt__22dPa_selectTexEcallBackFv@ha /* 0x8004FF8C@ha */
/* 800506C8  38 84 FF 8C */	addi r4, r4, __dt__22dPa_selectTexEcallBackFv@l /* 0x8004FF8C@l */
/* 800506CC  38 BF 00 48 */	addi r5, r31, 0x48
/* 800506D0  48 31 15 55 */	bl __register_global_object
/* 800506D4  38 1E 01 5C */	addi r0, r30, 0x15c
/* 800506D8  90 01 00 40 */	stw r0, 0x40(r1)
/* 800506DC  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 800506E0  39 83 85 54 */	addi r12, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 800506E4  91 81 00 40 */	stw r12, 0x40(r1)
/* 800506E8  38 61 00 40 */	addi r3, r1, 0x40
/* 800506EC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 800506F0  7D 89 03 A6 */	mtctr r12
/* 800506F4  4E 80 04 21 */	bctrl 
/* 800506F8  38 61 00 40 */	addi r3, r1, 0x40
/* 800506FC  38 80 00 00 */	li r4, 0
/* 80050700  48 22 DF A5 */	bl __dt__18JPAEmitterCallBackFv
/* 80050704  3C 60 80 3B */	lis r3, __vt__18JPAEmitterCallBack@ha /* 0x803A8578@ha */
/* 80050708  38 C3 85 78 */	addi r6, r3, __vt__18JPAEmitterCallBack@l /* 0x803A8578@l */
/* 8005070C  90 C1 00 38 */	stw r6, 0x38(r1)
/* 80050710  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 80050714  38 A3 85 54 */	addi r5, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 80050718  90 A1 00 38 */	stw r5, 0x38(r1)
/* 8005071C  38 9E 01 5C */	addi r4, r30, 0x15c
/* 80050720  90 81 00 38 */	stw r4, 0x38(r1)
/* 80050724  38 00 00 04 */	li r0, 4
/* 80050728  98 01 00 3C */	stb r0, 0x3c(r1)
/* 8005072C  38 7F 00 84 */	addi r3, r31, 0x84
/* 80050730  90 C3 00 20 */	stw r6, 0x20(r3)
/* 80050734  90 A3 00 20 */	stw r5, 0x20(r3)
/* 80050738  90 83 00 20 */	stw r4, 0x20(r3)
/* 8005073C  98 03 00 24 */	stb r0, 0x24(r3)
/* 80050740  38 63 00 20 */	addi r3, r3, 0x20
/* 80050744  3C 80 80 05 */	lis r4, __dt__22dPa_selectTexEcallBackFv@ha /* 0x8004FF8C@ha */
/* 80050748  38 84 FF 8C */	addi r4, r4, __dt__22dPa_selectTexEcallBackFv@l /* 0x8004FF8C@l */
/* 8005074C  38 BF 00 54 */	addi r5, r31, 0x54
/* 80050750  48 31 14 D5 */	bl __register_global_object
/* 80050754  38 1E 01 5C */	addi r0, r30, 0x15c
/* 80050758  90 01 00 38 */	stw r0, 0x38(r1)
/* 8005075C  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 80050760  39 83 85 54 */	addi r12, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 80050764  91 81 00 38 */	stw r12, 0x38(r1)
/* 80050768  38 61 00 38 */	addi r3, r1, 0x38
/* 8005076C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80050770  7D 89 03 A6 */	mtctr r12
/* 80050774  4E 80 04 21 */	bctrl 
/* 80050778  38 61 00 38 */	addi r3, r1, 0x38
/* 8005077C  38 80 00 00 */	li r4, 0
/* 80050780  48 22 DF 25 */	bl __dt__18JPAEmitterCallBackFv
/* 80050784  3C 60 80 3B */	lis r3, __vt__18JPAEmitterCallBack@ha /* 0x803A8578@ha */
/* 80050788  38 C3 85 78 */	addi r6, r3, __vt__18JPAEmitterCallBack@l /* 0x803A8578@l */
/* 8005078C  90 C1 00 30 */	stw r6, 0x30(r1)
/* 80050790  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 80050794  38 A3 85 54 */	addi r5, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 80050798  90 A1 00 30 */	stw r5, 0x30(r1)
/* 8005079C  38 9E 01 5C */	addi r4, r30, 0x15c
/* 800507A0  90 81 00 30 */	stw r4, 0x30(r1)
/* 800507A4  38 00 00 05 */	li r0, 5
/* 800507A8  98 01 00 34 */	stb r0, 0x34(r1)
/* 800507AC  38 7F 00 84 */	addi r3, r31, 0x84
/* 800507B0  90 C3 00 28 */	stw r6, 0x28(r3)
/* 800507B4  90 A3 00 28 */	stw r5, 0x28(r3)
/* 800507B8  90 83 00 28 */	stw r4, 0x28(r3)
/* 800507BC  98 03 00 2C */	stb r0, 0x2c(r3)
/* 800507C0  38 63 00 28 */	addi r3, r3, 0x28
/* 800507C4  3C 80 80 05 */	lis r4, __dt__22dPa_selectTexEcallBackFv@ha /* 0x8004FF8C@ha */
/* 800507C8  38 84 FF 8C */	addi r4, r4, __dt__22dPa_selectTexEcallBackFv@l /* 0x8004FF8C@l */
/* 800507CC  38 BF 00 60 */	addi r5, r31, 0x60
/* 800507D0  48 31 14 55 */	bl __register_global_object
/* 800507D4  38 1E 01 5C */	addi r0, r30, 0x15c
/* 800507D8  90 01 00 30 */	stw r0, 0x30(r1)
/* 800507DC  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 800507E0  39 83 85 54 */	addi r12, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 800507E4  91 81 00 30 */	stw r12, 0x30(r1)
/* 800507E8  38 61 00 30 */	addi r3, r1, 0x30
/* 800507EC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 800507F0  7D 89 03 A6 */	mtctr r12
/* 800507F4  4E 80 04 21 */	bctrl 
/* 800507F8  38 61 00 30 */	addi r3, r1, 0x30
/* 800507FC  38 80 00 00 */	li r4, 0
/* 80050800  48 22 DE A5 */	bl __dt__18JPAEmitterCallBackFv
/* 80050804  3C 60 80 3B */	lis r3, __vt__18JPAEmitterCallBack@ha /* 0x803A8578@ha */
/* 80050808  38 C3 85 78 */	addi r6, r3, __vt__18JPAEmitterCallBack@l /* 0x803A8578@l */
/* 8005080C  90 C1 00 28 */	stw r6, 0x28(r1)
/* 80050810  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 80050814  38 A3 85 54 */	addi r5, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 80050818  90 A1 00 28 */	stw r5, 0x28(r1)
/* 8005081C  38 9E 01 5C */	addi r4, r30, 0x15c
/* 80050820  90 81 00 28 */	stw r4, 0x28(r1)
/* 80050824  38 00 00 06 */	li r0, 6
/* 80050828  98 01 00 2C */	stb r0, 0x2c(r1)
/* 8005082C  38 7F 00 84 */	addi r3, r31, 0x84
/* 80050830  90 C3 00 30 */	stw r6, 0x30(r3)
/* 80050834  90 A3 00 30 */	stw r5, 0x30(r3)
/* 80050838  90 83 00 30 */	stw r4, 0x30(r3)
/* 8005083C  98 03 00 34 */	stb r0, 0x34(r3)
/* 80050840  38 63 00 30 */	addi r3, r3, 0x30
/* 80050844  3C 80 80 05 */	lis r4, __dt__22dPa_selectTexEcallBackFv@ha /* 0x8004FF8C@ha */
/* 80050848  38 84 FF 8C */	addi r4, r4, __dt__22dPa_selectTexEcallBackFv@l /* 0x8004FF8C@l */
/* 8005084C  38 BF 00 6C */	addi r5, r31, 0x6c
/* 80050850  48 31 13 D5 */	bl __register_global_object
/* 80050854  38 1E 01 5C */	addi r0, r30, 0x15c
/* 80050858  90 01 00 28 */	stw r0, 0x28(r1)
/* 8005085C  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 80050860  39 83 85 54 */	addi r12, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 80050864  91 81 00 28 */	stw r12, 0x28(r1)
/* 80050868  38 61 00 28 */	addi r3, r1, 0x28
/* 8005086C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80050870  7D 89 03 A6 */	mtctr r12
/* 80050874  4E 80 04 21 */	bctrl 
/* 80050878  38 61 00 28 */	addi r3, r1, 0x28
/* 8005087C  38 80 00 00 */	li r4, 0
/* 80050880  48 22 DE 25 */	bl __dt__18JPAEmitterCallBackFv
/* 80050884  3C 60 80 3B */	lis r3, __vt__18JPAEmitterCallBack@ha /* 0x803A8578@ha */
/* 80050888  38 C3 85 78 */	addi r6, r3, __vt__18JPAEmitterCallBack@l /* 0x803A8578@l */
/* 8005088C  90 C1 00 20 */	stw r6, 0x20(r1)
/* 80050890  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 80050894  38 A3 85 54 */	addi r5, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 80050898  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8005089C  38 9E 01 5C */	addi r4, r30, 0x15c
/* 800508A0  90 81 00 20 */	stw r4, 0x20(r1)
/* 800508A4  38 00 00 07 */	li r0, 7
/* 800508A8  98 01 00 24 */	stb r0, 0x24(r1)
/* 800508AC  38 7F 00 84 */	addi r3, r31, 0x84
/* 800508B0  90 C3 00 38 */	stw r6, 0x38(r3)
/* 800508B4  90 A3 00 38 */	stw r5, 0x38(r3)
/* 800508B8  90 83 00 38 */	stw r4, 0x38(r3)
/* 800508BC  98 03 00 3C */	stb r0, 0x3c(r3)
/* 800508C0  38 63 00 38 */	addi r3, r3, 0x38
/* 800508C4  3C 80 80 05 */	lis r4, __dt__22dPa_selectTexEcallBackFv@ha /* 0x8004FF8C@ha */
/* 800508C8  38 84 FF 8C */	addi r4, r4, __dt__22dPa_selectTexEcallBackFv@l /* 0x8004FF8C@l */
/* 800508CC  38 BF 00 78 */	addi r5, r31, 0x78
/* 800508D0  48 31 13 55 */	bl __register_global_object
/* 800508D4  38 1E 01 5C */	addi r0, r30, 0x15c
/* 800508D8  90 01 00 20 */	stw r0, 0x20(r1)
/* 800508DC  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 800508E0  39 83 85 54 */	addi r12, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 800508E4  91 81 00 20 */	stw r12, 0x20(r1)
/* 800508E8  38 61 00 20 */	addi r3, r1, 0x20
/* 800508EC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 800508F0  7D 89 03 A6 */	mtctr r12
/* 800508F4  4E 80 04 21 */	bctrl 
/* 800508F8  38 61 00 20 */	addi r3, r1, 0x20
/* 800508FC  38 80 00 00 */	li r4, 0
/* 80050900  48 22 DD A5 */	bl __dt__18JPAEmitterCallBackFv
/* 80050904  3C 60 80 3B */	lis r3, __vt__18JPAEmitterCallBack@ha /* 0x803A8578@ha */
/* 80050908  38 C3 85 78 */	addi r6, r3, __vt__18JPAEmitterCallBack@l /* 0x803A8578@l */
/* 8005090C  90 C1 00 18 */	stw r6, 0x18(r1)
/* 80050910  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 80050914  38 A3 85 54 */	addi r5, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 80050918  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8005091C  3C 60 80 3B */	lis r3, __vt__21dPa_setColorEcallBack@ha /* 0x803A8594@ha */
/* 80050920  38 83 85 94 */	addi r4, r3, __vt__21dPa_setColorEcallBack@l /* 0x803A8594@l */
/* 80050924  90 81 00 18 */	stw r4, 0x18(r1)
/* 80050928  88 1E 00 00 */	lbz r0, 0(r30)
/* 8005092C  98 01 00 1C */	stb r0, 0x1c(r1)
/* 80050930  38 7E 00 00 */	addi r3, r30, 0
/* 80050934  88 03 00 01 */	lbz r0, 1(r3)
/* 80050938  98 01 00 1D */	stb r0, 0x1d(r1)
/* 8005093C  88 03 00 02 */	lbz r0, 2(r3)
/* 80050940  98 01 00 1E */	stb r0, 0x1e(r1)
/* 80050944  88 03 00 03 */	lbz r0, 3(r3)
/* 80050948  98 01 00 1F */	stb r0, 0x1f(r1)
/* 8005094C  90 DF 00 E8 */	stw r6, 0xe8(r31)
/* 80050950  90 BF 00 E8 */	stw r5, 0xe8(r31)
/* 80050954  90 9F 00 E8 */	stw r4, 0xe8(r31)
/* 80050958  38 7F 00 E8 */	addi r3, r31, 0xe8
/* 8005095C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80050960  90 03 00 04 */	stw r0, 4(r3)
/* 80050964  3C 80 80 05 */	lis r4, __dt__21dPa_setColorEcallBackFv@ha /* 0x800502E4@ha */
/* 80050968  38 84 02 E4 */	addi r4, r4, __dt__21dPa_setColorEcallBackFv@l /* 0x800502E4@l */
/* 8005096C  38 BF 00 C4 */	addi r5, r31, 0xc4
/* 80050970  48 31 12 B5 */	bl __register_global_object
/* 80050974  3C 60 80 3B */	lis r3, __vt__21dPa_setColorEcallBack@ha /* 0x803A8594@ha */
/* 80050978  38 03 85 94 */	addi r0, r3, __vt__21dPa_setColorEcallBack@l /* 0x803A8594@l */
/* 8005097C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80050980  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 80050984  39 83 85 54 */	addi r12, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 80050988  91 81 00 18 */	stw r12, 0x18(r1)
/* 8005098C  38 61 00 18 */	addi r3, r1, 0x18
/* 80050990  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80050994  7D 89 03 A6 */	mtctr r12
/* 80050998  4E 80 04 21 */	bctrl 
/* 8005099C  38 61 00 18 */	addi r3, r1, 0x18
/* 800509A0  38 80 00 00 */	li r4, 0
/* 800509A4  48 22 DD 01 */	bl __dt__18JPAEmitterCallBackFv
/* 800509A8  3C 60 80 3B */	lis r3, __vt__18JPAEmitterCallBack@ha /* 0x803A8578@ha */
/* 800509AC  38 C3 85 78 */	addi r6, r3, __vt__18JPAEmitterCallBack@l /* 0x803A8578@l */
/* 800509B0  90 C1 00 10 */	stw r6, 0x10(r1)
/* 800509B4  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 800509B8  38 A3 85 54 */	addi r5, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 800509BC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 800509C0  3C 60 80 3B */	lis r3, __vt__21dPa_setColorEcallBack@ha /* 0x803A8594@ha */
/* 800509C4  38 83 85 94 */	addi r4, r3, __vt__21dPa_setColorEcallBack@l /* 0x803A8594@l */
/* 800509C8  90 81 00 10 */	stw r4, 0x10(r1)
/* 800509CC  38 7E 00 00 */	addi r3, r30, 0
/* 800509D0  88 03 00 04 */	lbz r0, 4(r3)
/* 800509D4  98 01 00 14 */	stb r0, 0x14(r1)
/* 800509D8  88 03 00 05 */	lbz r0, 5(r3)
/* 800509DC  98 01 00 15 */	stb r0, 0x15(r1)
/* 800509E0  88 03 00 06 */	lbz r0, 6(r3)
/* 800509E4  98 01 00 16 */	stb r0, 0x16(r1)
/* 800509E8  88 03 00 07 */	lbz r0, 7(r3)
/* 800509EC  98 01 00 17 */	stb r0, 0x17(r1)
/* 800509F0  38 7F 00 E8 */	addi r3, r31, 0xe8
/* 800509F4  90 C3 00 08 */	stw r6, 8(r3)
/* 800509F8  90 A3 00 08 */	stw r5, 8(r3)
/* 800509FC  90 83 00 08 */	stw r4, 8(r3)
/* 80050A00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80050A04  90 03 00 0C */	stw r0, 0xc(r3)
/* 80050A08  38 63 00 08 */	addi r3, r3, 8
/* 80050A0C  3C 80 80 05 */	lis r4, __dt__21dPa_setColorEcallBackFv@ha /* 0x800502E4@ha */
/* 80050A10  38 84 02 E4 */	addi r4, r4, __dt__21dPa_setColorEcallBackFv@l /* 0x800502E4@l */
/* 80050A14  38 BF 00 D0 */	addi r5, r31, 0xd0
/* 80050A18  48 31 12 0D */	bl __register_global_object
/* 80050A1C  3C 60 80 3B */	lis r3, __vt__21dPa_setColorEcallBack@ha /* 0x803A8594@ha */
/* 80050A20  38 03 85 94 */	addi r0, r3, __vt__21dPa_setColorEcallBack@l /* 0x803A8594@l */
/* 80050A24  90 01 00 10 */	stw r0, 0x10(r1)
/* 80050A28  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 80050A2C  39 83 85 54 */	addi r12, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 80050A30  91 81 00 10 */	stw r12, 0x10(r1)
/* 80050A34  38 61 00 10 */	addi r3, r1, 0x10
/* 80050A38  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80050A3C  7D 89 03 A6 */	mtctr r12
/* 80050A40  4E 80 04 21 */	bctrl 
/* 80050A44  38 61 00 10 */	addi r3, r1, 0x10
/* 80050A48  38 80 00 00 */	li r4, 0
/* 80050A4C  48 22 DC 59 */	bl __dt__18JPAEmitterCallBackFv
/* 80050A50  3C 60 80 3B */	lis r3, __vt__18JPAEmitterCallBack@ha /* 0x803A8578@ha */
/* 80050A54  38 C3 85 78 */	addi r6, r3, __vt__18JPAEmitterCallBack@l /* 0x803A8578@l */
/* 80050A58  90 C1 00 08 */	stw r6, 8(r1)
/* 80050A5C  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 80050A60  38 A3 85 54 */	addi r5, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 80050A64  90 A1 00 08 */	stw r5, 8(r1)
/* 80050A68  3C 60 80 3B */	lis r3, __vt__21dPa_setColorEcallBack@ha /* 0x803A8594@ha */
/* 80050A6C  38 83 85 94 */	addi r4, r3, __vt__21dPa_setColorEcallBack@l /* 0x803A8594@l */
/* 80050A70  90 81 00 08 */	stw r4, 8(r1)
/* 80050A74  38 7E 00 00 */	addi r3, r30, 0
/* 80050A78  88 03 00 08 */	lbz r0, 8(r3)
/* 80050A7C  98 01 00 0C */	stb r0, 0xc(r1)
/* 80050A80  88 03 00 09 */	lbz r0, 9(r3)
/* 80050A84  98 01 00 0D */	stb r0, 0xd(r1)
/* 80050A88  88 03 00 0A */	lbz r0, 0xa(r3)
/* 80050A8C  98 01 00 0E */	stb r0, 0xe(r1)
/* 80050A90  88 03 00 0B */	lbz r0, 0xb(r3)
/* 80050A94  98 01 00 0F */	stb r0, 0xf(r1)
/* 80050A98  38 7F 00 E8 */	addi r3, r31, 0xe8
/* 80050A9C  90 C3 00 10 */	stw r6, 0x10(r3)
/* 80050AA0  90 A3 00 10 */	stw r5, 0x10(r3)
/* 80050AA4  90 83 00 10 */	stw r4, 0x10(r3)
/* 80050AA8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80050AAC  90 03 00 14 */	stw r0, 0x14(r3)
/* 80050AB0  38 63 00 10 */	addi r3, r3, 0x10
/* 80050AB4  3C 80 80 05 */	lis r4, __dt__21dPa_setColorEcallBackFv@ha /* 0x800502E4@ha */
/* 80050AB8  38 84 02 E4 */	addi r4, r4, __dt__21dPa_setColorEcallBackFv@l /* 0x800502E4@l */
/* 80050ABC  38 BF 00 DC */	addi r5, r31, 0xdc
/* 80050AC0  48 31 11 65 */	bl __register_global_object
/* 80050AC4  3C 60 80 3B */	lis r3, __vt__21dPa_setColorEcallBack@ha /* 0x803A8594@ha */
/* 80050AC8  38 03 85 94 */	addi r0, r3, __vt__21dPa_setColorEcallBack@l /* 0x803A8594@l */
/* 80050ACC  90 01 00 08 */	stw r0, 8(r1)
/* 80050AD0  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 80050AD4  39 83 85 54 */	addi r12, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 80050AD8  91 81 00 08 */	stw r12, 8(r1)
/* 80050ADC  38 61 00 08 */	addi r3, r1, 8
/* 80050AE0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80050AE4  7D 89 03 A6 */	mtctr r12
/* 80050AE8  4E 80 04 21 */	bctrl 
/* 80050AEC  38 61 00 08 */	addi r3, r1, 8
/* 80050AF0  38 80 00 00 */	li r4, 0
/* 80050AF4  48 22 DB B1 */	bl __dt__18JPAEmitterCallBackFv
/* 80050AF8  3C 60 80 3A */	lis r3, __vt__19JPAParticleCallBack@ha /* 0x803A357C@ha */
/* 80050AFC  38 03 35 7C */	addi r0, r3, __vt__19JPAParticleCallBack@l /* 0x803A357C@l */
/* 80050B00  90 0D 89 24 */	stw r0, mWaterBubblePcallBack__13dPa_control_c(r13)
/* 80050B04  38 1E 01 0C */	addi r0, r30, 0x10c
/* 80050B08  90 0D 89 24 */	stw r0, mWaterBubblePcallBack__13dPa_control_c(r13)
/* 80050B0C  38 6D 89 24 */	la r3, mWaterBubblePcallBack__13dPa_control_c(r13) /* 80450EA4-_SDA_BASE_ */
/* 80050B10  3C 80 80 05 */	lis r4, __dt__17dPa_wbPcallBack_cFv@ha /* 0x8004FECC@ha */
/* 80050B14  38 84 FE CC */	addi r4, r4, __dt__17dPa_wbPcallBack_cFv@l /* 0x8004FECC@l */
/* 80050B18  38 BF 01 00 */	addi r5, r31, 0x100
/* 80050B1C  48 31 11 09 */	bl __register_global_object
/* 80050B20  3C 60 80 3A */	lis r3, __vt__19JPAParticleCallBack@ha /* 0x803A357C@ha */
/* 80050B24  38 03 35 7C */	addi r0, r3, __vt__19JPAParticleCallBack@l /* 0x803A357C@l */
/* 80050B28  90 0D 89 28 */	stw r0, mFsenthPcallBack__13dPa_control_c(r13)
/* 80050B2C  38 1E 00 F8 */	addi r0, r30, 0xf8
/* 80050B30  90 0D 89 28 */	stw r0, mFsenthPcallBack__13dPa_control_c(r13)
/* 80050B34  38 6D 89 28 */	la r3, mFsenthPcallBack__13dPa_control_c(r13) /* 80450EA8-_SDA_BASE_ */
/* 80050B38  3C 80 80 05 */	lis r4, __dt__19dPa_fsenthPcallBackFv@ha /* 0x8004FE6C@ha */
/* 80050B3C  38 84 FE 6C */	addi r4, r4, __dt__19dPa_fsenthPcallBackFv@l /* 0x8004FE6C@l */
/* 80050B40  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80050B44  48 31 10 E1 */	bl __register_global_object
/* 80050B48  3C 60 80 3B */	lis r3, __vt__18JPAEmitterCallBack@ha /* 0x803A8578@ha */
/* 80050B4C  38 03 85 78 */	addi r0, r3, __vt__18JPAEmitterCallBack@l /* 0x803A8578@l */
/* 80050B50  90 0D 89 2C */	stw r0, mLight8EcallBack__13dPa_control_c(r13)
/* 80050B54  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 80050B58  38 03 85 54 */	addi r0, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 80050B5C  90 0D 89 2C */	stw r0, mLight8EcallBack__13dPa_control_c(r13)
/* 80050B60  38 1E 02 00 */	addi r0, r30, 0x200
/* 80050B64  90 0D 89 2C */	stw r0, mLight8EcallBack__13dPa_control_c(r13)
/* 80050B68  38 6D 89 2C */	la r3, mLight8EcallBack__13dPa_control_c(r13) /* 80450EAC-_SDA_BASE_ */
/* 80050B6C  3C 80 80 05 */	lis r4, __dt__19dPa_light8EcallBackFv@ha /* 0x8005015C@ha */
/* 80050B70  38 84 01 5C */	addi r4, r4, __dt__19dPa_light8EcallBackFv@l /* 0x8005015C@l */
/* 80050B74  38 BF 01 18 */	addi r5, r31, 0x118
/* 80050B78  48 31 10 AD */	bl __register_global_object
/* 80050B7C  3C 60 80 3A */	lis r3, __vt__19JPAParticleCallBack@ha /* 0x803A357C@ha */
/* 80050B80  38 03 35 7C */	addi r0, r3, __vt__19JPAParticleCallBack@l /* 0x803A357C@l */
/* 80050B84  90 0D 89 30 */	stw r0, mLight8PcallBack__13dPa_control_c(r13)
/* 80050B88  38 1E 00 E4 */	addi r0, r30, 0xe4
/* 80050B8C  90 0D 89 30 */	stw r0, mLight8PcallBack__13dPa_control_c(r13)
/* 80050B90  38 6D 89 30 */	la r3, mLight8PcallBack__13dPa_control_c(r13) /* 80450EB0-_SDA_BASE_ */
/* 80050B94  3C 80 80 05 */	lis r4, __dt__19dPa_light8PcallBackFv@ha /* 0x8004FE0C@ha */
/* 80050B98  38 84 FE 0C */	addi r4, r4, __dt__19dPa_light8PcallBackFv@l /* 0x8004FE0C@l */
/* 80050B9C  38 BF 01 24 */	addi r5, r31, 0x124
/* 80050BA0  48 31 10 85 */	bl __register_global_object
/* 80050BA4  3C 60 80 3B */	lis r3, __vt__18JPAEmitterCallBack@ha /* 0x803A8578@ha */
/* 80050BA8  38 03 85 78 */	addi r0, r3, __vt__18JPAEmitterCallBack@l /* 0x803A8578@l */
/* 80050BAC  90 0D 89 34 */	stw r0, m_b_Light8EcallBack__13dPa_control_c(r13)
/* 80050BB0  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 80050BB4  38 03 85 54 */	addi r0, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 80050BB8  90 0D 89 34 */	stw r0, m_b_Light8EcallBack__13dPa_control_c(r13)
/* 80050BBC  38 1E 01 DC */	addi r0, r30, 0x1dc
/* 80050BC0  90 0D 89 34 */	stw r0, m_b_Light8EcallBack__13dPa_control_c(r13)
/* 80050BC4  38 6D 89 34 */	la r3, m_b_Light8EcallBack__13dPa_control_c(r13) /* 80450EB4-_SDA_BASE_ */
/* 80050BC8  3C 80 80 05 */	lis r4, __dt__25dPa_gen_b_light8EcallBackFv@ha /* 0x800500B8@ha */
/* 80050BCC  38 84 00 B8 */	addi r4, r4, __dt__25dPa_gen_b_light8EcallBackFv@l /* 0x800500B8@l */
/* 80050BD0  38 BF 01 30 */	addi r5, r31, 0x130
/* 80050BD4  48 31 10 51 */	bl __register_global_object
/* 80050BD8  3C 60 80 3A */	lis r3, __vt__19JPAParticleCallBack@ha /* 0x803A357C@ha */
/* 80050BDC  38 03 35 7C */	addi r0, r3, __vt__19JPAParticleCallBack@l /* 0x803A357C@l */
/* 80050BE0  90 0D 89 38 */	stw r0, m_b_Light8PcallBack__13dPa_control_c(r13)
/* 80050BE4  38 1E 00 D0 */	addi r0, r30, 0xd0
/* 80050BE8  90 0D 89 38 */	stw r0, m_b_Light8PcallBack__13dPa_control_c(r13)
/* 80050BEC  38 6D 89 38 */	la r3, m_b_Light8PcallBack__13dPa_control_c(r13) /* 80450EB8-_SDA_BASE_ */
/* 80050BF0  3C 80 80 05 */	lis r4, __dt__25dPa_gen_b_light8PcallBackFv@ha /* 0x8004FDAC@ha */
/* 80050BF4  38 84 FD AC */	addi r4, r4, __dt__25dPa_gen_b_light8PcallBackFv@l /* 0x8004FDAC@l */
/* 80050BF8  38 BF 01 3C */	addi r5, r31, 0x13c
/* 80050BFC  48 31 10 29 */	bl __register_global_object
/* 80050C00  3C 60 80 3B */	lis r3, __vt__18JPAEmitterCallBack@ha /* 0x803A8578@ha */
/* 80050C04  38 03 85 78 */	addi r0, r3, __vt__18JPAEmitterCallBack@l /* 0x803A8578@l */
/* 80050C08  90 0D 89 3C */	stw r0, m_d_Light8EcallBack__13dPa_control_c(r13)
/* 80050C0C  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 80050C10  38 03 85 54 */	addi r0, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 80050C14  90 0D 89 3C */	stw r0, m_d_Light8EcallBack__13dPa_control_c(r13)
/* 80050C18  38 1E 01 B8 */	addi r0, r30, 0x1b8
/* 80050C1C  90 0D 89 3C */	stw r0, m_d_Light8EcallBack__13dPa_control_c(r13)
/* 80050C20  38 6D 89 3C */	la r3, m_d_Light8EcallBack__13dPa_control_c(r13) /* 80450EBC-_SDA_BASE_ */
/* 80050C24  3C 80 80 05 */	lis r4, __dt__25dPa_gen_d_light8EcallBackFv@ha /* 0x800503FC@ha */
/* 80050C28  38 84 03 FC */	addi r4, r4, __dt__25dPa_gen_d_light8EcallBackFv@l /* 0x800503FC@l */
/* 80050C2C  38 BF 01 48 */	addi r5, r31, 0x148
/* 80050C30  48 31 0F F5 */	bl __register_global_object
/* 80050C34  3C 60 80 3A */	lis r3, __vt__19JPAParticleCallBack@ha /* 0x803A357C@ha */
/* 80050C38  38 03 35 7C */	addi r0, r3, __vt__19JPAParticleCallBack@l /* 0x803A357C@l */
/* 80050C3C  90 0D 89 40 */	stw r0, m_d_Light8PcallBack__13dPa_control_c(r13)
/* 80050C40  38 1E 00 BC */	addi r0, r30, 0xbc
/* 80050C44  90 0D 89 40 */	stw r0, m_d_Light8PcallBack__13dPa_control_c(r13)
/* 80050C48  38 6D 89 40 */	la r3, m_d_Light8PcallBack__13dPa_control_c(r13) /* 80450EC0-_SDA_BASE_ */
/* 80050C4C  3C 80 80 05 */	lis r4, __dt__25dPa_gen_d_light8PcallBackFv@ha /* 0x8004FD4C@ha */
/* 80050C50  38 84 FD 4C */	addi r4, r4, __dt__25dPa_gen_d_light8PcallBackFv@l /* 0x8004FD4C@l */
/* 80050C54  38 BF 01 54 */	addi r5, r31, 0x154
/* 80050C58  48 31 0F CD */	bl __register_global_object
/* 80050C5C  3C 60 80 3A */	lis r3, __vt__19JPAParticleCallBack@ha /* 0x803A357C@ha */
/* 80050C60  38 03 35 7C */	addi r0, r3, __vt__19JPAParticleCallBack@l /* 0x803A357C@l */
/* 80050C64  90 0D 89 48 */	stw r0, mParticleTracePCB__13dPa_control_c(r13)
/* 80050C68  38 1E 00 84 */	addi r0, r30, 0x84
/* 80050C6C  90 0D 89 48 */	stw r0, mParticleTracePCB__13dPa_control_c(r13)
/* 80050C70  38 6D 89 48 */	la r3, mParticleTracePCB__13dPa_control_c(r13) /* 80450EC8-_SDA_BASE_ */
/* 80050C74  3C 80 80 05 */	lis r4, __dt__28dPa_particleTracePcallBack_cFv@ha /* 0x8004FC68@ha */
/* 80050C78  38 84 FC 68 */	addi r4, r4, __dt__28dPa_particleTracePcallBack_cFv@l /* 0x8004FC68@l */
/* 80050C7C  38 BF 01 90 */	addi r5, r31, 0x190
/* 80050C80  48 31 0F A5 */	bl __register_global_object
/* 80050C84  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80050C88  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80050C8C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80050C90  7C 08 03 A6 */	mtlr r0
/* 80050C94  38 21 00 70 */	addi r1, r1, 0x70
/* 80050C98  4E 80 00 20 */	blr 
