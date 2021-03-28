lbl_80751408:
/* 80751408  94 21 FA 20 */	stwu r1, -0x5e0(r1)
/* 8075140C  7C 08 02 A6 */	mflr r0
/* 80751410  90 01 05 E4 */	stw r0, 0x5e4(r1)
/* 80751414  39 61 05 E0 */	addi r11, r1, 0x5e0
/* 80751418  4B C1 0D B0 */	b _savegpr_24
/* 8075141C  7C 7E 1B 78 */	mr r30, r3
/* 80751420  3C 60 80 75 */	lis r3, lit_1109@ha
/* 80751424  3B A3 7E 10 */	addi r29, r3, lit_1109@l
/* 80751428  3C 60 80 75 */	lis r3, lit_3917@ha
/* 8075142C  3B E3 76 FC */	addi r31, r3, lit_3917@l
/* 80751430  38 60 00 00 */	li r3, 0
/* 80751434  48 00 62 9D */	bl dComIfGp_getPlayer__Fi
/* 80751438  7C 7B 1B 78 */	mr r27, r3
/* 8075143C  38 60 00 00 */	li r3, 0
/* 80751440  48 00 62 75 */	bl dComIfGp_getPlayerCameraID__Fi
/* 80751444  48 00 62 59 */	bl dComIfGp_getCamera__Fi
/* 80751448  7C 7C 1B 78 */	mr r28, r3
/* 8075144C  38 60 00 00 */	li r3, 0
/* 80751450  48 00 62 4D */	bl dComIfGp_getCamera__Fi
/* 80751454  38 61 05 60 */	addi r3, r1, 0x560
/* 80751458  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8075145C  FC 40 08 90 */	fmr f2, f1
/* 80751460  FC 60 08 90 */	fmr f3, f1
/* 80751464  48 00 62 29 */	bl __ct__4cXyzFfff
/* 80751468  88 1D 00 9C */	lbz r0, 0x9c(r29)
/* 8075146C  7C 00 07 75 */	extsb. r0, r0
/* 80751470  40 82 04 88 */	bne lbl_807518F8
/* 80751474  38 61 05 3C */	addi r3, r1, 0x53c
/* 80751478  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 8075147C  C0 5F 00 CC */	lfs f2, 0xcc(r31)
/* 80751480  C0 7F 00 D0 */	lfs f3, 0xd0(r31)
/* 80751484  48 00 62 09 */	bl __ct__4cXyzFfff
/* 80751488  38 7D 01 6C */	addi r3, r29, 0x16c
/* 8075148C  38 81 05 3C */	addi r4, r1, 0x53c
/* 80751490  48 00 61 E1 */	bl __ct__4cXyzFRC4cXyz
/* 80751494  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751498  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8075149C  38 BD 00 90 */	addi r5, r29, 0x90
/* 807514A0  4B FF B0 39 */	bl __register_global_object
/* 807514A4  38 61 05 3C */	addi r3, r1, 0x53c
/* 807514A8  38 80 FF FF */	li r4, -1
/* 807514AC  48 00 5E 21 */	bl __dt__4cXyzFv
/* 807514B0  38 61 05 30 */	addi r3, r1, 0x530
/* 807514B4  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 807514B8  C0 5F 00 D8 */	lfs f2, 0xd8(r31)
/* 807514BC  C0 7F 00 DC */	lfs f3, 0xdc(r31)
/* 807514C0  48 00 61 CD */	bl __ct__4cXyzFfff
/* 807514C4  38 7D 01 6C */	addi r3, r29, 0x16c
/* 807514C8  38 63 00 0C */	addi r3, r3, 0xc
/* 807514CC  38 81 05 30 */	addi r4, r1, 0x530
/* 807514D0  48 00 61 A1 */	bl __ct__4cXyzFRC4cXyz
/* 807514D4  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 807514D8  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 807514DC  38 BD 00 A0 */	addi r5, r29, 0xa0
/* 807514E0  4B FF AF F9 */	bl __register_global_object
/* 807514E4  38 61 05 30 */	addi r3, r1, 0x530
/* 807514E8  38 80 FF FF */	li r4, -1
/* 807514EC  48 00 5D E1 */	bl __dt__4cXyzFv
/* 807514F0  38 61 05 24 */	addi r3, r1, 0x524
/* 807514F4  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 807514F8  C0 5F 00 E4 */	lfs f2, 0xe4(r31)
/* 807514FC  C0 7F 00 E8 */	lfs f3, 0xe8(r31)
/* 80751500  48 00 61 8D */	bl __ct__4cXyzFfff
/* 80751504  38 7D 01 6C */	addi r3, r29, 0x16c
/* 80751508  38 63 00 18 */	addi r3, r3, 0x18
/* 8075150C  38 81 05 24 */	addi r4, r1, 0x524
/* 80751510  48 00 61 61 */	bl __ct__4cXyzFRC4cXyz
/* 80751514  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751518  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8075151C  38 BD 00 AC */	addi r5, r29, 0xac
/* 80751520  4B FF AF B9 */	bl __register_global_object
/* 80751524  38 61 05 24 */	addi r3, r1, 0x524
/* 80751528  38 80 FF FF */	li r4, -1
/* 8075152C  48 00 5D A1 */	bl __dt__4cXyzFv
/* 80751530  38 61 05 18 */	addi r3, r1, 0x518
/* 80751534  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 80751538  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 8075153C  C0 7F 00 F4 */	lfs f3, 0xf4(r31)
/* 80751540  48 00 61 4D */	bl __ct__4cXyzFfff
/* 80751544  38 7D 01 6C */	addi r3, r29, 0x16c
/* 80751548  38 63 00 24 */	addi r3, r3, 0x24
/* 8075154C  38 81 05 18 */	addi r4, r1, 0x518
/* 80751550  48 00 61 21 */	bl __ct__4cXyzFRC4cXyz
/* 80751554  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751558  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8075155C  38 BD 00 B8 */	addi r5, r29, 0xb8
/* 80751560  4B FF AF 79 */	bl __register_global_object
/* 80751564  38 61 05 18 */	addi r3, r1, 0x518
/* 80751568  38 80 FF FF */	li r4, -1
/* 8075156C  48 00 5D 61 */	bl __dt__4cXyzFv
/* 80751570  38 61 05 0C */	addi r3, r1, 0x50c
/* 80751574  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 80751578  C0 5F 00 FC */	lfs f2, 0xfc(r31)
/* 8075157C  C0 7F 01 00 */	lfs f3, 0x100(r31)
/* 80751580  48 00 61 0D */	bl __ct__4cXyzFfff
/* 80751584  38 7D 01 6C */	addi r3, r29, 0x16c
/* 80751588  38 63 00 30 */	addi r3, r3, 0x30
/* 8075158C  38 81 05 0C */	addi r4, r1, 0x50c
/* 80751590  48 00 60 E1 */	bl __ct__4cXyzFRC4cXyz
/* 80751594  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751598  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8075159C  38 BD 00 C4 */	addi r5, r29, 0xc4
/* 807515A0  4B FF AF 39 */	bl __register_global_object
/* 807515A4  38 61 05 0C */	addi r3, r1, 0x50c
/* 807515A8  38 80 FF FF */	li r4, -1
/* 807515AC  48 00 5D 21 */	bl __dt__4cXyzFv
/* 807515B0  38 61 05 00 */	addi r3, r1, 0x500
/* 807515B4  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 807515B8  C0 5F 01 08 */	lfs f2, 0x108(r31)
/* 807515BC  C0 7F 01 0C */	lfs f3, 0x10c(r31)
/* 807515C0  48 00 60 CD */	bl __ct__4cXyzFfff
/* 807515C4  38 7D 01 6C */	addi r3, r29, 0x16c
/* 807515C8  38 63 00 3C */	addi r3, r3, 0x3c
/* 807515CC  38 81 05 00 */	addi r4, r1, 0x500
/* 807515D0  48 00 60 A1 */	bl __ct__4cXyzFRC4cXyz
/* 807515D4  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 807515D8  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 807515DC  38 BD 00 D0 */	addi r5, r29, 0xd0
/* 807515E0  4B FF AE F9 */	bl __register_global_object
/* 807515E4  38 61 05 00 */	addi r3, r1, 0x500
/* 807515E8  38 80 FF FF */	li r4, -1
/* 807515EC  48 00 5C E1 */	bl __dt__4cXyzFv
/* 807515F0  38 61 04 F4 */	addi r3, r1, 0x4f4
/* 807515F4  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 807515F8  C0 5F 01 10 */	lfs f2, 0x110(r31)
/* 807515FC  C0 7F 01 14 */	lfs f3, 0x114(r31)
/* 80751600  48 00 60 8D */	bl __ct__4cXyzFfff
/* 80751604  38 7D 01 6C */	addi r3, r29, 0x16c
/* 80751608  38 63 00 48 */	addi r3, r3, 0x48
/* 8075160C  38 81 04 F4 */	addi r4, r1, 0x4f4
/* 80751610  48 00 60 61 */	bl __ct__4cXyzFRC4cXyz
/* 80751614  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751618  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8075161C  38 BD 00 DC */	addi r5, r29, 0xdc
/* 80751620  4B FF AE B9 */	bl __register_global_object
/* 80751624  38 61 04 F4 */	addi r3, r1, 0x4f4
/* 80751628  38 80 FF FF */	li r4, -1
/* 8075162C  48 00 5C A1 */	bl __dt__4cXyzFv
/* 80751630  38 61 04 E8 */	addi r3, r1, 0x4e8
/* 80751634  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 80751638  C0 5F 01 1C */	lfs f2, 0x11c(r31)
/* 8075163C  C0 7F 01 20 */	lfs f3, 0x120(r31)
/* 80751640  48 00 60 4D */	bl __ct__4cXyzFfff
/* 80751644  38 7D 01 6C */	addi r3, r29, 0x16c
/* 80751648  38 63 00 54 */	addi r3, r3, 0x54
/* 8075164C  38 81 04 E8 */	addi r4, r1, 0x4e8
/* 80751650  48 00 60 21 */	bl __ct__4cXyzFRC4cXyz
/* 80751654  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751658  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8075165C  38 BD 00 E8 */	addi r5, r29, 0xe8
/* 80751660  4B FF AE 79 */	bl __register_global_object
/* 80751664  38 61 04 E8 */	addi r3, r1, 0x4e8
/* 80751668  38 80 FF FF */	li r4, -1
/* 8075166C  48 00 5C 61 */	bl __dt__4cXyzFv
/* 80751670  38 61 04 DC */	addi r3, r1, 0x4dc
/* 80751674  C0 3F 01 24 */	lfs f1, 0x124(r31)
/* 80751678  C0 5F 01 28 */	lfs f2, 0x128(r31)
/* 8075167C  C0 7F 01 2C */	lfs f3, 0x12c(r31)
/* 80751680  48 00 60 0D */	bl __ct__4cXyzFfff
/* 80751684  38 7D 01 6C */	addi r3, r29, 0x16c
/* 80751688  38 63 00 60 */	addi r3, r3, 0x60
/* 8075168C  38 81 04 DC */	addi r4, r1, 0x4dc
/* 80751690  48 00 5F E1 */	bl __ct__4cXyzFRC4cXyz
/* 80751694  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751698  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8075169C  38 BD 00 F4 */	addi r5, r29, 0xf4
/* 807516A0  4B FF AE 39 */	bl __register_global_object
/* 807516A4  38 61 04 DC */	addi r3, r1, 0x4dc
/* 807516A8  38 80 FF FF */	li r4, -1
/* 807516AC  48 00 5C 21 */	bl __dt__4cXyzFv
/* 807516B0  38 61 04 D0 */	addi r3, r1, 0x4d0
/* 807516B4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807516B8  C0 5F 01 30 */	lfs f2, 0x130(r31)
/* 807516BC  C0 7F 01 34 */	lfs f3, 0x134(r31)
/* 807516C0  48 00 5F CD */	bl __ct__4cXyzFfff
/* 807516C4  38 7D 01 6C */	addi r3, r29, 0x16c
/* 807516C8  38 63 00 6C */	addi r3, r3, 0x6c
/* 807516CC  38 81 04 D0 */	addi r4, r1, 0x4d0
/* 807516D0  48 00 5F A1 */	bl __ct__4cXyzFRC4cXyz
/* 807516D4  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 807516D8  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 807516DC  38 BD 01 00 */	addi r5, r29, 0x100
/* 807516E0  4B FF AD F9 */	bl __register_global_object
/* 807516E4  38 61 04 D0 */	addi r3, r1, 0x4d0
/* 807516E8  38 80 FF FF */	li r4, -1
/* 807516EC  48 00 5B E1 */	bl __dt__4cXyzFv
/* 807516F0  38 61 04 C4 */	addi r3, r1, 0x4c4
/* 807516F4  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 807516F8  C0 5F 01 3C */	lfs f2, 0x13c(r31)
/* 807516FC  C0 7F 01 40 */	lfs f3, 0x140(r31)
/* 80751700  48 00 5F 8D */	bl __ct__4cXyzFfff
/* 80751704  38 7D 01 6C */	addi r3, r29, 0x16c
/* 80751708  38 63 00 78 */	addi r3, r3, 0x78
/* 8075170C  38 81 04 C4 */	addi r4, r1, 0x4c4
/* 80751710  48 00 5F 61 */	bl __ct__4cXyzFRC4cXyz
/* 80751714  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751718  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8075171C  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80751720  4B FF AD B9 */	bl __register_global_object
/* 80751724  38 61 04 C4 */	addi r3, r1, 0x4c4
/* 80751728  38 80 FF FF */	li r4, -1
/* 8075172C  48 00 5B A1 */	bl __dt__4cXyzFv
/* 80751730  38 61 04 B8 */	addi r3, r1, 0x4b8
/* 80751734  C0 3F 01 44 */	lfs f1, 0x144(r31)
/* 80751738  C0 5F 01 24 */	lfs f2, 0x124(r31)
/* 8075173C  C0 7F 01 48 */	lfs f3, 0x148(r31)
/* 80751740  48 00 5F 4D */	bl __ct__4cXyzFfff
/* 80751744  38 7D 01 6C */	addi r3, r29, 0x16c
/* 80751748  38 63 00 84 */	addi r3, r3, 0x84
/* 8075174C  38 81 04 B8 */	addi r4, r1, 0x4b8
/* 80751750  48 00 5F 21 */	bl __ct__4cXyzFRC4cXyz
/* 80751754  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751758  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8075175C  38 BD 01 18 */	addi r5, r29, 0x118
/* 80751760  4B FF AD 79 */	bl __register_global_object
/* 80751764  38 61 04 B8 */	addi r3, r1, 0x4b8
/* 80751768  38 80 FF FF */	li r4, -1
/* 8075176C  48 00 5B 61 */	bl __dt__4cXyzFv
/* 80751770  38 61 04 AC */	addi r3, r1, 0x4ac
/* 80751774  C0 3F 01 4C */	lfs f1, 0x14c(r31)
/* 80751778  C0 5F 01 50 */	lfs f2, 0x150(r31)
/* 8075177C  C0 7F 01 54 */	lfs f3, 0x154(r31)
/* 80751780  48 00 5F 0D */	bl __ct__4cXyzFfff
/* 80751784  38 7D 01 6C */	addi r3, r29, 0x16c
/* 80751788  38 63 00 90 */	addi r3, r3, 0x90
/* 8075178C  38 81 04 AC */	addi r4, r1, 0x4ac
/* 80751790  48 00 5E E1 */	bl __ct__4cXyzFRC4cXyz
/* 80751794  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751798  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8075179C  38 BD 01 24 */	addi r5, r29, 0x124
/* 807517A0  4B FF AD 39 */	bl __register_global_object
/* 807517A4  38 61 04 AC */	addi r3, r1, 0x4ac
/* 807517A8  38 80 FF FF */	li r4, -1
/* 807517AC  48 00 5B 21 */	bl __dt__4cXyzFv
/* 807517B0  38 61 04 A0 */	addi r3, r1, 0x4a0
/* 807517B4  C0 3F 01 58 */	lfs f1, 0x158(r31)
/* 807517B8  C0 5F 01 5C */	lfs f2, 0x15c(r31)
/* 807517BC  C0 7F 00 00 */	lfs f3, 0(r31)
/* 807517C0  48 00 5E CD */	bl __ct__4cXyzFfff
/* 807517C4  38 7D 01 6C */	addi r3, r29, 0x16c
/* 807517C8  38 63 00 9C */	addi r3, r3, 0x9c
/* 807517CC  38 81 04 A0 */	addi r4, r1, 0x4a0
/* 807517D0  48 00 5E A1 */	bl __ct__4cXyzFRC4cXyz
/* 807517D4  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 807517D8  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 807517DC  38 BD 01 30 */	addi r5, r29, 0x130
/* 807517E0  4B FF AC F9 */	bl __register_global_object
/* 807517E4  38 61 04 A0 */	addi r3, r1, 0x4a0
/* 807517E8  38 80 FF FF */	li r4, -1
/* 807517EC  48 00 5A E1 */	bl __dt__4cXyzFv
/* 807517F0  38 61 04 94 */	addi r3, r1, 0x494
/* 807517F4  C0 3F 01 60 */	lfs f1, 0x160(r31)
/* 807517F8  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 807517FC  C0 7F 01 64 */	lfs f3, 0x164(r31)
/* 80751800  48 00 5E 8D */	bl __ct__4cXyzFfff
/* 80751804  38 7D 01 6C */	addi r3, r29, 0x16c
/* 80751808  38 63 00 A8 */	addi r3, r3, 0xa8
/* 8075180C  38 81 04 94 */	addi r4, r1, 0x494
/* 80751810  48 00 5E 61 */	bl __ct__4cXyzFRC4cXyz
/* 80751814  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751818  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8075181C  38 BD 01 3C */	addi r5, r29, 0x13c
/* 80751820  4B FF AC B9 */	bl __register_global_object
/* 80751824  38 61 04 94 */	addi r3, r1, 0x494
/* 80751828  38 80 FF FF */	li r4, -1
/* 8075182C  48 00 5A A1 */	bl __dt__4cXyzFv
/* 80751830  38 61 04 88 */	addi r3, r1, 0x488
/* 80751834  C0 3F 01 68 */	lfs f1, 0x168(r31)
/* 80751838  C0 5F 01 6C */	lfs f2, 0x16c(r31)
/* 8075183C  C0 7F 01 70 */	lfs f3, 0x170(r31)
/* 80751840  48 00 5E 4D */	bl __ct__4cXyzFfff
/* 80751844  38 7D 01 6C */	addi r3, r29, 0x16c
/* 80751848  38 63 00 B4 */	addi r3, r3, 0xb4
/* 8075184C  38 81 04 88 */	addi r4, r1, 0x488
/* 80751850  48 00 5E 21 */	bl __ct__4cXyzFRC4cXyz
/* 80751854  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751858  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8075185C  38 BD 01 48 */	addi r5, r29, 0x148
/* 80751860  4B FF AC 79 */	bl __register_global_object
/* 80751864  38 61 04 88 */	addi r3, r1, 0x488
/* 80751868  38 80 FF FF */	li r4, -1
/* 8075186C  48 00 5A 61 */	bl __dt__4cXyzFv
/* 80751870  38 61 04 7C */	addi r3, r1, 0x47c
/* 80751874  C0 3F 01 74 */	lfs f1, 0x174(r31)
/* 80751878  C0 5F 01 78 */	lfs f2, 0x178(r31)
/* 8075187C  C0 7F 01 7C */	lfs f3, 0x17c(r31)
/* 80751880  48 00 5E 0D */	bl __ct__4cXyzFfff
/* 80751884  38 7D 01 6C */	addi r3, r29, 0x16c
/* 80751888  38 63 00 C0 */	addi r3, r3, 0xc0
/* 8075188C  38 81 04 7C */	addi r4, r1, 0x47c
/* 80751890  48 00 5D E1 */	bl __ct__4cXyzFRC4cXyz
/* 80751894  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751898  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8075189C  38 BD 01 54 */	addi r5, r29, 0x154
/* 807518A0  4B FF AC 39 */	bl __register_global_object
/* 807518A4  38 61 04 7C */	addi r3, r1, 0x47c
/* 807518A8  38 80 FF FF */	li r4, -1
/* 807518AC  48 00 5A 21 */	bl __dt__4cXyzFv
/* 807518B0  38 61 04 70 */	addi r3, r1, 0x470
/* 807518B4  C0 3F 01 80 */	lfs f1, 0x180(r31)
/* 807518B8  C0 5F 01 84 */	lfs f2, 0x184(r31)
/* 807518BC  C0 7F 01 88 */	lfs f3, 0x188(r31)
/* 807518C0  48 00 5D CD */	bl __ct__4cXyzFfff
/* 807518C4  38 7D 01 6C */	addi r3, r29, 0x16c
/* 807518C8  38 63 00 CC */	addi r3, r3, 0xcc
/* 807518CC  38 81 04 70 */	addi r4, r1, 0x470
/* 807518D0  48 00 5D A1 */	bl __ct__4cXyzFRC4cXyz
/* 807518D4  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 807518D8  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 807518DC  38 BD 01 60 */	addi r5, r29, 0x160
/* 807518E0  4B FF AB F9 */	bl __register_global_object
/* 807518E4  38 61 04 70 */	addi r3, r1, 0x470
/* 807518E8  38 80 FF FF */	li r4, -1
/* 807518EC  48 00 59 E1 */	bl __dt__4cXyzFv
/* 807518F0  38 00 00 01 */	li r0, 1
/* 807518F4  98 1D 00 9C */	stb r0, 0x9c(r29)
lbl_807518F8:
/* 807518F8  88 1D 02 50 */	lbz r0, 0x250(r29)
/* 807518FC  7C 00 07 75 */	extsb. r0, r0
/* 80751900  40 82 04 88 */	bne lbl_80751D88
/* 80751904  38 61 04 64 */	addi r3, r1, 0x464
/* 80751908  C0 3F 01 8C */	lfs f1, 0x18c(r31)
/* 8075190C  C0 5F 01 90 */	lfs f2, 0x190(r31)
/* 80751910  C0 7F 01 94 */	lfs f3, 0x194(r31)
/* 80751914  48 00 5D 79 */	bl __ct__4cXyzFfff
/* 80751918  38 7D 03 20 */	addi r3, r29, 0x320
/* 8075191C  38 81 04 64 */	addi r4, r1, 0x464
/* 80751920  48 00 5D 51 */	bl __ct__4cXyzFRC4cXyz
/* 80751924  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751928  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8075192C  38 BD 02 44 */	addi r5, r29, 0x244
/* 80751930  4B FF AB A9 */	bl __register_global_object
/* 80751934  38 61 04 64 */	addi r3, r1, 0x464
/* 80751938  38 80 FF FF */	li r4, -1
/* 8075193C  48 00 59 91 */	bl __dt__4cXyzFv
/* 80751940  38 61 04 58 */	addi r3, r1, 0x458
/* 80751944  C0 3F 01 98 */	lfs f1, 0x198(r31)
/* 80751948  C0 5F 01 9C */	lfs f2, 0x19c(r31)
/* 8075194C  C0 7F 01 A0 */	lfs f3, 0x1a0(r31)
/* 80751950  48 00 5D 3D */	bl __ct__4cXyzFfff
/* 80751954  38 7D 03 20 */	addi r3, r29, 0x320
/* 80751958  38 63 00 0C */	addi r3, r3, 0xc
/* 8075195C  38 81 04 58 */	addi r4, r1, 0x458
/* 80751960  48 00 5D 11 */	bl __ct__4cXyzFRC4cXyz
/* 80751964  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751968  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8075196C  38 BD 02 54 */	addi r5, r29, 0x254
/* 80751970  4B FF AB 69 */	bl __register_global_object
/* 80751974  38 61 04 58 */	addi r3, r1, 0x458
/* 80751978  38 80 FF FF */	li r4, -1
/* 8075197C  48 00 59 51 */	bl __dt__4cXyzFv
/* 80751980  38 61 04 4C */	addi r3, r1, 0x44c
/* 80751984  C0 3F 01 A4 */	lfs f1, 0x1a4(r31)
/* 80751988  C0 5F 01 A8 */	lfs f2, 0x1a8(r31)
/* 8075198C  C0 7F 01 AC */	lfs f3, 0x1ac(r31)
/* 80751990  48 00 5C FD */	bl __ct__4cXyzFfff
/* 80751994  38 7D 03 20 */	addi r3, r29, 0x320
/* 80751998  38 63 00 18 */	addi r3, r3, 0x18
/* 8075199C  38 81 04 4C */	addi r4, r1, 0x44c
/* 807519A0  48 00 5C D1 */	bl __ct__4cXyzFRC4cXyz
/* 807519A4  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 807519A8  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 807519AC  38 BD 02 60 */	addi r5, r29, 0x260
/* 807519B0  4B FF AB 29 */	bl __register_global_object
/* 807519B4  38 61 04 4C */	addi r3, r1, 0x44c
/* 807519B8  38 80 FF FF */	li r4, -1
/* 807519BC  48 00 59 11 */	bl __dt__4cXyzFv
/* 807519C0  38 61 04 40 */	addi r3, r1, 0x440
/* 807519C4  C0 3F 01 B0 */	lfs f1, 0x1b0(r31)
/* 807519C8  C0 5F 01 B4 */	lfs f2, 0x1b4(r31)
/* 807519CC  C0 7F 01 B8 */	lfs f3, 0x1b8(r31)
/* 807519D0  48 00 5C BD */	bl __ct__4cXyzFfff
/* 807519D4  38 7D 03 20 */	addi r3, r29, 0x320
/* 807519D8  38 63 00 24 */	addi r3, r3, 0x24
/* 807519DC  38 81 04 40 */	addi r4, r1, 0x440
/* 807519E0  48 00 5C 91 */	bl __ct__4cXyzFRC4cXyz
/* 807519E4  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 807519E8  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 807519EC  38 BD 02 6C */	addi r5, r29, 0x26c
/* 807519F0  4B FF AA E9 */	bl __register_global_object
/* 807519F4  38 61 04 40 */	addi r3, r1, 0x440
/* 807519F8  38 80 FF FF */	li r4, -1
/* 807519FC  48 00 58 D1 */	bl __dt__4cXyzFv
/* 80751A00  38 61 04 34 */	addi r3, r1, 0x434
/* 80751A04  C0 3F 01 BC */	lfs f1, 0x1bc(r31)
/* 80751A08  C0 5F 01 C0 */	lfs f2, 0x1c0(r31)
/* 80751A0C  C0 7F 01 C4 */	lfs f3, 0x1c4(r31)
/* 80751A10  48 00 5C 7D */	bl __ct__4cXyzFfff
/* 80751A14  38 7D 03 20 */	addi r3, r29, 0x320
/* 80751A18  38 63 00 30 */	addi r3, r3, 0x30
/* 80751A1C  38 81 04 34 */	addi r4, r1, 0x434
/* 80751A20  48 00 5C 51 */	bl __ct__4cXyzFRC4cXyz
/* 80751A24  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751A28  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80751A2C  38 BD 02 78 */	addi r5, r29, 0x278
/* 80751A30  4B FF AA A9 */	bl __register_global_object
/* 80751A34  38 61 04 34 */	addi r3, r1, 0x434
/* 80751A38  38 80 FF FF */	li r4, -1
/* 80751A3C  48 00 58 91 */	bl __dt__4cXyzFv
/* 80751A40  38 61 04 28 */	addi r3, r1, 0x428
/* 80751A44  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 80751A48  C0 5F 01 C8 */	lfs f2, 0x1c8(r31)
/* 80751A4C  C0 7F 01 CC */	lfs f3, 0x1cc(r31)
/* 80751A50  48 00 5C 3D */	bl __ct__4cXyzFfff
/* 80751A54  38 7D 03 20 */	addi r3, r29, 0x320
/* 80751A58  38 63 00 3C */	addi r3, r3, 0x3c
/* 80751A5C  38 81 04 28 */	addi r4, r1, 0x428
/* 80751A60  48 00 5C 11 */	bl __ct__4cXyzFRC4cXyz
/* 80751A64  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751A68  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80751A6C  38 BD 02 84 */	addi r5, r29, 0x284
/* 80751A70  4B FF AA 69 */	bl __register_global_object
/* 80751A74  38 61 04 28 */	addi r3, r1, 0x428
/* 80751A78  38 80 FF FF */	li r4, -1
/* 80751A7C  48 00 58 51 */	bl __dt__4cXyzFv
/* 80751A80  38 61 04 1C */	addi r3, r1, 0x41c
/* 80751A84  C0 3F 01 50 */	lfs f1, 0x150(r31)
/* 80751A88  C0 5F 01 D0 */	lfs f2, 0x1d0(r31)
/* 80751A8C  C0 7F 01 D4 */	lfs f3, 0x1d4(r31)
/* 80751A90  48 00 5B FD */	bl __ct__4cXyzFfff
/* 80751A94  38 7D 03 20 */	addi r3, r29, 0x320
/* 80751A98  38 63 00 48 */	addi r3, r3, 0x48
/* 80751A9C  38 81 04 1C */	addi r4, r1, 0x41c
/* 80751AA0  48 00 5B D1 */	bl __ct__4cXyzFRC4cXyz
/* 80751AA4  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751AA8  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80751AAC  38 BD 02 90 */	addi r5, r29, 0x290
/* 80751AB0  4B FF AA 29 */	bl __register_global_object
/* 80751AB4  38 61 04 1C */	addi r3, r1, 0x41c
/* 80751AB8  38 80 FF FF */	li r4, -1
/* 80751ABC  48 00 58 11 */	bl __dt__4cXyzFv
/* 80751AC0  38 61 04 10 */	addi r3, r1, 0x410
/* 80751AC4  C0 3F 01 D8 */	lfs f1, 0x1d8(r31)
/* 80751AC8  C0 5F 01 DC */	lfs f2, 0x1dc(r31)
/* 80751ACC  C0 7F 01 E0 */	lfs f3, 0x1e0(r31)
/* 80751AD0  48 00 5B BD */	bl __ct__4cXyzFfff
/* 80751AD4  38 7D 03 20 */	addi r3, r29, 0x320
/* 80751AD8  38 63 00 54 */	addi r3, r3, 0x54
/* 80751ADC  38 81 04 10 */	addi r4, r1, 0x410
/* 80751AE0  48 00 5B 91 */	bl __ct__4cXyzFRC4cXyz
/* 80751AE4  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751AE8  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80751AEC  38 BD 02 9C */	addi r5, r29, 0x29c
/* 80751AF0  4B FF A9 E9 */	bl __register_global_object
/* 80751AF4  38 61 04 10 */	addi r3, r1, 0x410
/* 80751AF8  38 80 FF FF */	li r4, -1
/* 80751AFC  48 00 57 D1 */	bl __dt__4cXyzFv
/* 80751B00  38 61 04 04 */	addi r3, r1, 0x404
/* 80751B04  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80751B08  C0 5F 01 E4 */	lfs f2, 0x1e4(r31)
/* 80751B0C  C0 7F 01 E8 */	lfs f3, 0x1e8(r31)
/* 80751B10  48 00 5B 7D */	bl __ct__4cXyzFfff
/* 80751B14  38 7D 03 20 */	addi r3, r29, 0x320
/* 80751B18  38 63 00 60 */	addi r3, r3, 0x60
/* 80751B1C  38 81 04 04 */	addi r4, r1, 0x404
/* 80751B20  48 00 5B 51 */	bl __ct__4cXyzFRC4cXyz
/* 80751B24  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751B28  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80751B2C  38 BD 02 A8 */	addi r5, r29, 0x2a8
/* 80751B30  4B FF A9 A9 */	bl __register_global_object
/* 80751B34  38 61 04 04 */	addi r3, r1, 0x404
/* 80751B38  38 80 FF FF */	li r4, -1
/* 80751B3C  48 00 57 91 */	bl __dt__4cXyzFv
/* 80751B40  38 61 03 F8 */	addi r3, r1, 0x3f8
/* 80751B44  C0 3F 01 EC */	lfs f1, 0x1ec(r31)
/* 80751B48  C0 5F 01 F0 */	lfs f2, 0x1f0(r31)
/* 80751B4C  C0 7F 01 F4 */	lfs f3, 0x1f4(r31)
/* 80751B50  48 00 5B 3D */	bl __ct__4cXyzFfff
/* 80751B54  38 7D 03 20 */	addi r3, r29, 0x320
/* 80751B58  38 63 00 6C */	addi r3, r3, 0x6c
/* 80751B5C  38 81 03 F8 */	addi r4, r1, 0x3f8
/* 80751B60  48 00 5B 11 */	bl __ct__4cXyzFRC4cXyz
/* 80751B64  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751B68  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80751B6C  38 BD 02 B4 */	addi r5, r29, 0x2b4
/* 80751B70  4B FF A9 69 */	bl __register_global_object
/* 80751B74  38 61 03 F8 */	addi r3, r1, 0x3f8
/* 80751B78  38 80 FF FF */	li r4, -1
/* 80751B7C  48 00 57 51 */	bl __dt__4cXyzFv
/* 80751B80  38 61 03 EC */	addi r3, r1, 0x3ec
/* 80751B84  C0 3F 01 F8 */	lfs f1, 0x1f8(r31)
/* 80751B88  C0 5F 01 FC */	lfs f2, 0x1fc(r31)
/* 80751B8C  C0 7F 02 00 */	lfs f3, 0x200(r31)
/* 80751B90  48 00 5A FD */	bl __ct__4cXyzFfff
/* 80751B94  38 7D 03 20 */	addi r3, r29, 0x320
/* 80751B98  38 63 00 78 */	addi r3, r3, 0x78
/* 80751B9C  38 81 03 EC */	addi r4, r1, 0x3ec
/* 80751BA0  48 00 5A D1 */	bl __ct__4cXyzFRC4cXyz
/* 80751BA4  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751BA8  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80751BAC  38 BD 02 C0 */	addi r5, r29, 0x2c0
/* 80751BB0  4B FF A9 29 */	bl __register_global_object
/* 80751BB4  38 61 03 EC */	addi r3, r1, 0x3ec
/* 80751BB8  38 80 FF FF */	li r4, -1
/* 80751BBC  48 00 57 11 */	bl __dt__4cXyzFv
/* 80751BC0  38 61 03 E0 */	addi r3, r1, 0x3e0
/* 80751BC4  C0 3F 02 04 */	lfs f1, 0x204(r31)
/* 80751BC8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80751BCC  C0 7F 02 08 */	lfs f3, 0x208(r31)
/* 80751BD0  48 00 5A BD */	bl __ct__4cXyzFfff
/* 80751BD4  38 7D 03 20 */	addi r3, r29, 0x320
/* 80751BD8  38 63 00 84 */	addi r3, r3, 0x84
/* 80751BDC  38 81 03 E0 */	addi r4, r1, 0x3e0
/* 80751BE0  48 00 5A 91 */	bl __ct__4cXyzFRC4cXyz
/* 80751BE4  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751BE8  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80751BEC  38 BD 02 CC */	addi r5, r29, 0x2cc
/* 80751BF0  4B FF A8 E9 */	bl __register_global_object
/* 80751BF4  38 61 03 E0 */	addi r3, r1, 0x3e0
/* 80751BF8  38 80 FF FF */	li r4, -1
/* 80751BFC  48 00 56 D1 */	bl __dt__4cXyzFv
/* 80751C00  38 61 03 D4 */	addi r3, r1, 0x3d4
/* 80751C04  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 80751C08  C0 5F 02 10 */	lfs f2, 0x210(r31)
/* 80751C0C  C0 7F 02 14 */	lfs f3, 0x214(r31)
/* 80751C10  48 00 5A 7D */	bl __ct__4cXyzFfff
/* 80751C14  38 7D 03 20 */	addi r3, r29, 0x320
/* 80751C18  38 63 00 90 */	addi r3, r3, 0x90
/* 80751C1C  38 81 03 D4 */	addi r4, r1, 0x3d4
/* 80751C20  48 00 5A 51 */	bl __ct__4cXyzFRC4cXyz
/* 80751C24  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751C28  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80751C2C  38 BD 02 D8 */	addi r5, r29, 0x2d8
/* 80751C30  4B FF A8 A9 */	bl __register_global_object
/* 80751C34  38 61 03 D4 */	addi r3, r1, 0x3d4
/* 80751C38  38 80 FF FF */	li r4, -1
/* 80751C3C  48 00 56 91 */	bl __dt__4cXyzFv
/* 80751C40  38 61 03 C8 */	addi r3, r1, 0x3c8
/* 80751C44  C0 3F 02 18 */	lfs f1, 0x218(r31)
/* 80751C48  C0 5F 02 1C */	lfs f2, 0x21c(r31)
/* 80751C4C  C0 7F 02 20 */	lfs f3, 0x220(r31)
/* 80751C50  48 00 5A 3D */	bl __ct__4cXyzFfff
/* 80751C54  38 7D 03 20 */	addi r3, r29, 0x320
/* 80751C58  38 63 00 9C */	addi r3, r3, 0x9c
/* 80751C5C  38 81 03 C8 */	addi r4, r1, 0x3c8
/* 80751C60  48 00 5A 11 */	bl __ct__4cXyzFRC4cXyz
/* 80751C64  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751C68  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80751C6C  38 BD 02 E4 */	addi r5, r29, 0x2e4
/* 80751C70  4B FF A8 69 */	bl __register_global_object
/* 80751C74  38 61 03 C8 */	addi r3, r1, 0x3c8
/* 80751C78  38 80 FF FF */	li r4, -1
/* 80751C7C  48 00 56 51 */	bl __dt__4cXyzFv
/* 80751C80  38 61 03 BC */	addi r3, r1, 0x3bc
/* 80751C84  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80751C88  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80751C8C  C0 7F 02 24 */	lfs f3, 0x224(r31)
/* 80751C90  48 00 59 FD */	bl __ct__4cXyzFfff
/* 80751C94  38 7D 03 20 */	addi r3, r29, 0x320
/* 80751C98  38 63 00 A8 */	addi r3, r3, 0xa8
/* 80751C9C  38 81 03 BC */	addi r4, r1, 0x3bc
/* 80751CA0  48 00 59 D1 */	bl __ct__4cXyzFRC4cXyz
/* 80751CA4  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751CA8  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80751CAC  38 BD 02 F0 */	addi r5, r29, 0x2f0
/* 80751CB0  4B FF A8 29 */	bl __register_global_object
/* 80751CB4  38 61 03 BC */	addi r3, r1, 0x3bc
/* 80751CB8  38 80 FF FF */	li r4, -1
/* 80751CBC  48 00 56 11 */	bl __dt__4cXyzFv
/* 80751CC0  38 61 03 B0 */	addi r3, r1, 0x3b0
/* 80751CC4  C0 3F 01 68 */	lfs f1, 0x168(r31)
/* 80751CC8  C0 5F 02 28 */	lfs f2, 0x228(r31)
/* 80751CCC  C0 7F 02 2C */	lfs f3, 0x22c(r31)
/* 80751CD0  48 00 59 BD */	bl __ct__4cXyzFfff
/* 80751CD4  38 7D 03 20 */	addi r3, r29, 0x320
/* 80751CD8  38 63 00 B4 */	addi r3, r3, 0xb4
/* 80751CDC  38 81 03 B0 */	addi r4, r1, 0x3b0
/* 80751CE0  48 00 59 91 */	bl __ct__4cXyzFRC4cXyz
/* 80751CE4  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751CE8  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80751CEC  38 BD 02 FC */	addi r5, r29, 0x2fc
/* 80751CF0  4B FF A7 E9 */	bl __register_global_object
/* 80751CF4  38 61 03 B0 */	addi r3, r1, 0x3b0
/* 80751CF8  38 80 FF FF */	li r4, -1
/* 80751CFC  48 00 55 D1 */	bl __dt__4cXyzFv
/* 80751D00  38 61 03 A4 */	addi r3, r1, 0x3a4
/* 80751D04  C0 3F 02 30 */	lfs f1, 0x230(r31)
/* 80751D08  C0 5F 02 34 */	lfs f2, 0x234(r31)
/* 80751D0C  C0 7F 02 38 */	lfs f3, 0x238(r31)
/* 80751D10  48 00 59 7D */	bl __ct__4cXyzFfff
/* 80751D14  38 7D 03 20 */	addi r3, r29, 0x320
/* 80751D18  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80751D1C  38 81 03 A4 */	addi r4, r1, 0x3a4
/* 80751D20  48 00 59 51 */	bl __ct__4cXyzFRC4cXyz
/* 80751D24  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751D28  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80751D2C  38 BD 03 08 */	addi r5, r29, 0x308
/* 80751D30  4B FF A7 A9 */	bl __register_global_object
/* 80751D34  38 61 03 A4 */	addi r3, r1, 0x3a4
/* 80751D38  38 80 FF FF */	li r4, -1
/* 80751D3C  48 00 55 91 */	bl __dt__4cXyzFv
/* 80751D40  38 61 03 98 */	addi r3, r1, 0x398
/* 80751D44  C0 3F 02 3C */	lfs f1, 0x23c(r31)
/* 80751D48  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 80751D4C  C0 7F 02 40 */	lfs f3, 0x240(r31)
/* 80751D50  48 00 59 3D */	bl __ct__4cXyzFfff
/* 80751D54  38 7D 03 20 */	addi r3, r29, 0x320
/* 80751D58  38 63 00 CC */	addi r3, r3, 0xcc
/* 80751D5C  38 81 03 98 */	addi r4, r1, 0x398
/* 80751D60  48 00 59 11 */	bl __ct__4cXyzFRC4cXyz
/* 80751D64  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751D68  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80751D6C  38 BD 03 14 */	addi r5, r29, 0x314
/* 80751D70  4B FF A7 69 */	bl __register_global_object
/* 80751D74  38 61 03 98 */	addi r3, r1, 0x398
/* 80751D78  38 80 FF FF */	li r4, -1
/* 80751D7C  48 00 55 51 */	bl __dt__4cXyzFv
/* 80751D80  38 00 00 01 */	li r0, 1
/* 80751D84  98 1D 02 50 */	stb r0, 0x250(r29)
lbl_80751D88:
/* 80751D88  88 1D 04 04 */	lbz r0, 0x404(r29)
/* 80751D8C  7C 00 07 75 */	extsb. r0, r0
/* 80751D90  40 82 05 88 */	bne lbl_80752318
/* 80751D94  38 61 03 8C */	addi r3, r1, 0x38c
/* 80751D98  C0 3F 02 44 */	lfs f1, 0x244(r31)
/* 80751D9C  C0 5F 01 28 */	lfs f2, 0x128(r31)
/* 80751DA0  C0 7F 02 48 */	lfs f3, 0x248(r31)
/* 80751DA4  48 00 58 E9 */	bl __ct__4cXyzFfff
/* 80751DA8  38 7D 05 04 */	addi r3, r29, 0x504
/* 80751DAC  38 81 03 8C */	addi r4, r1, 0x38c
/* 80751DB0  48 00 58 C1 */	bl __ct__4cXyzFRC4cXyz
/* 80751DB4  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751DB8  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80751DBC  38 BD 03 F8 */	addi r5, r29, 0x3f8
/* 80751DC0  4B FF A7 19 */	bl __register_global_object
/* 80751DC4  38 61 03 8C */	addi r3, r1, 0x38c
/* 80751DC8  38 80 FF FF */	li r4, -1
/* 80751DCC  48 00 55 01 */	bl __dt__4cXyzFv
/* 80751DD0  38 61 03 80 */	addi r3, r1, 0x380
/* 80751DD4  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80751DD8  C0 5F 02 4C */	lfs f2, 0x24c(r31)
/* 80751DDC  C0 7F 02 50 */	lfs f3, 0x250(r31)
/* 80751DE0  48 00 58 AD */	bl __ct__4cXyzFfff
/* 80751DE4  38 7D 05 04 */	addi r3, r29, 0x504
/* 80751DE8  38 63 00 0C */	addi r3, r3, 0xc
/* 80751DEC  38 81 03 80 */	addi r4, r1, 0x380
/* 80751DF0  48 00 58 81 */	bl __ct__4cXyzFRC4cXyz
/* 80751DF4  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751DF8  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80751DFC  38 BD 04 08 */	addi r5, r29, 0x408
/* 80751E00  4B FF A6 D9 */	bl __register_global_object
/* 80751E04  38 61 03 80 */	addi r3, r1, 0x380
/* 80751E08  38 80 FF FF */	li r4, -1
/* 80751E0C  48 00 54 C1 */	bl __dt__4cXyzFv
/* 80751E10  38 61 03 74 */	addi r3, r1, 0x374
/* 80751E14  C0 3F 02 54 */	lfs f1, 0x254(r31)
/* 80751E18  C0 5F 02 58 */	lfs f2, 0x258(r31)
/* 80751E1C  C0 7F 02 5C */	lfs f3, 0x25c(r31)
/* 80751E20  48 00 58 6D */	bl __ct__4cXyzFfff
/* 80751E24  38 7D 05 04 */	addi r3, r29, 0x504
/* 80751E28  38 63 00 18 */	addi r3, r3, 0x18
/* 80751E2C  38 81 03 74 */	addi r4, r1, 0x374
/* 80751E30  48 00 58 41 */	bl __ct__4cXyzFRC4cXyz
/* 80751E34  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751E38  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80751E3C  38 BD 04 14 */	addi r5, r29, 0x414
/* 80751E40  4B FF A6 99 */	bl __register_global_object
/* 80751E44  38 61 03 74 */	addi r3, r1, 0x374
/* 80751E48  38 80 FF FF */	li r4, -1
/* 80751E4C  48 00 54 81 */	bl __dt__4cXyzFv
/* 80751E50  38 61 03 68 */	addi r3, r1, 0x368
/* 80751E54  C0 3F 02 60 */	lfs f1, 0x260(r31)
/* 80751E58  C0 5F 02 64 */	lfs f2, 0x264(r31)
/* 80751E5C  C0 7F 02 68 */	lfs f3, 0x268(r31)
/* 80751E60  48 00 58 2D */	bl __ct__4cXyzFfff
/* 80751E64  38 7D 05 04 */	addi r3, r29, 0x504
/* 80751E68  38 63 00 24 */	addi r3, r3, 0x24
/* 80751E6C  38 81 03 68 */	addi r4, r1, 0x368
/* 80751E70  48 00 58 01 */	bl __ct__4cXyzFRC4cXyz
/* 80751E74  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751E78  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80751E7C  38 BD 04 20 */	addi r5, r29, 0x420
/* 80751E80  4B FF A6 59 */	bl __register_global_object
/* 80751E84  38 61 03 68 */	addi r3, r1, 0x368
/* 80751E88  38 80 FF FF */	li r4, -1
/* 80751E8C  48 00 54 41 */	bl __dt__4cXyzFv
/* 80751E90  38 61 03 5C */	addi r3, r1, 0x35c
/* 80751E94  C0 3F 02 6C */	lfs f1, 0x26c(r31)
/* 80751E98  C0 5F 02 58 */	lfs f2, 0x258(r31)
/* 80751E9C  C0 7F 02 70 */	lfs f3, 0x270(r31)
/* 80751EA0  48 00 57 ED */	bl __ct__4cXyzFfff
/* 80751EA4  38 7D 05 04 */	addi r3, r29, 0x504
/* 80751EA8  38 63 00 30 */	addi r3, r3, 0x30
/* 80751EAC  38 81 03 5C */	addi r4, r1, 0x35c
/* 80751EB0  48 00 57 C1 */	bl __ct__4cXyzFRC4cXyz
/* 80751EB4  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751EB8  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80751EBC  38 BD 04 2C */	addi r5, r29, 0x42c
/* 80751EC0  4B FF A6 19 */	bl __register_global_object
/* 80751EC4  38 61 03 5C */	addi r3, r1, 0x35c
/* 80751EC8  38 80 FF FF */	li r4, -1
/* 80751ECC  48 00 54 01 */	bl __dt__4cXyzFv
/* 80751ED0  38 61 03 50 */	addi r3, r1, 0x350
/* 80751ED4  C0 3F 02 74 */	lfs f1, 0x274(r31)
/* 80751ED8  C0 5F 02 64 */	lfs f2, 0x264(r31)
/* 80751EDC  C0 7F 02 78 */	lfs f3, 0x278(r31)
/* 80751EE0  48 00 57 AD */	bl __ct__4cXyzFfff
/* 80751EE4  38 7D 05 04 */	addi r3, r29, 0x504
/* 80751EE8  38 63 00 3C */	addi r3, r3, 0x3c
/* 80751EEC  38 81 03 50 */	addi r4, r1, 0x350
/* 80751EF0  48 00 57 81 */	bl __ct__4cXyzFRC4cXyz
/* 80751EF4  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751EF8  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80751EFC  38 BD 04 38 */	addi r5, r29, 0x438
/* 80751F00  4B FF A5 D9 */	bl __register_global_object
/* 80751F04  38 61 03 50 */	addi r3, r1, 0x350
/* 80751F08  38 80 FF FF */	li r4, -1
/* 80751F0C  48 00 53 C1 */	bl __dt__4cXyzFv
/* 80751F10  38 61 03 44 */	addi r3, r1, 0x344
/* 80751F14  C0 3F 02 7C */	lfs f1, 0x27c(r31)
/* 80751F18  C0 5F 01 28 */	lfs f2, 0x128(r31)
/* 80751F1C  C0 7F 02 80 */	lfs f3, 0x280(r31)
/* 80751F20  48 00 57 6D */	bl __ct__4cXyzFfff
/* 80751F24  38 7D 05 04 */	addi r3, r29, 0x504
/* 80751F28  38 63 00 48 */	addi r3, r3, 0x48
/* 80751F2C  38 81 03 44 */	addi r4, r1, 0x344
/* 80751F30  48 00 57 41 */	bl __ct__4cXyzFRC4cXyz
/* 80751F34  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751F38  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80751F3C  38 BD 04 44 */	addi r5, r29, 0x444
/* 80751F40  4B FF A5 99 */	bl __register_global_object
/* 80751F44  38 61 03 44 */	addi r3, r1, 0x344
/* 80751F48  38 80 FF FF */	li r4, -1
/* 80751F4C  48 00 53 81 */	bl __dt__4cXyzFv
/* 80751F50  38 61 03 38 */	addi r3, r1, 0x338
/* 80751F54  C0 3F 02 84 */	lfs f1, 0x284(r31)
/* 80751F58  C0 5F 02 88 */	lfs f2, 0x288(r31)
/* 80751F5C  C0 7F 02 8C */	lfs f3, 0x28c(r31)
/* 80751F60  48 00 57 2D */	bl __ct__4cXyzFfff
/* 80751F64  38 7D 05 04 */	addi r3, r29, 0x504
/* 80751F68  38 63 00 54 */	addi r3, r3, 0x54
/* 80751F6C  38 81 03 38 */	addi r4, r1, 0x338
/* 80751F70  48 00 57 01 */	bl __ct__4cXyzFRC4cXyz
/* 80751F74  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751F78  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80751F7C  38 BD 04 50 */	addi r5, r29, 0x450
/* 80751F80  4B FF A5 59 */	bl __register_global_object
/* 80751F84  38 61 03 38 */	addi r3, r1, 0x338
/* 80751F88  38 80 FF FF */	li r4, -1
/* 80751F8C  48 00 53 41 */	bl __dt__4cXyzFv
/* 80751F90  38 61 03 2C */	addi r3, r1, 0x32c
/* 80751F94  C0 3F 02 90 */	lfs f1, 0x290(r31)
/* 80751F98  C0 5F 01 28 */	lfs f2, 0x128(r31)
/* 80751F9C  C0 7F 02 94 */	lfs f3, 0x294(r31)
/* 80751FA0  48 00 56 ED */	bl __ct__4cXyzFfff
/* 80751FA4  38 7D 05 04 */	addi r3, r29, 0x504
/* 80751FA8  38 63 00 60 */	addi r3, r3, 0x60
/* 80751FAC  38 81 03 2C */	addi r4, r1, 0x32c
/* 80751FB0  48 00 56 C1 */	bl __ct__4cXyzFRC4cXyz
/* 80751FB4  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751FB8  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80751FBC  38 BD 04 5C */	addi r5, r29, 0x45c
/* 80751FC0  4B FF A5 19 */	bl __register_global_object
/* 80751FC4  38 61 03 2C */	addi r3, r1, 0x32c
/* 80751FC8  38 80 FF FF */	li r4, -1
/* 80751FCC  48 00 53 01 */	bl __dt__4cXyzFv
/* 80751FD0  38 61 03 20 */	addi r3, r1, 0x320
/* 80751FD4  C0 3F 02 98 */	lfs f1, 0x298(r31)
/* 80751FD8  C0 5F 02 88 */	lfs f2, 0x288(r31)
/* 80751FDC  C0 7F 02 9C */	lfs f3, 0x29c(r31)
/* 80751FE0  48 00 56 AD */	bl __ct__4cXyzFfff
/* 80751FE4  38 7D 05 04 */	addi r3, r29, 0x504
/* 80751FE8  38 63 00 6C */	addi r3, r3, 0x6c
/* 80751FEC  38 81 03 20 */	addi r4, r1, 0x320
/* 80751FF0  48 00 56 81 */	bl __ct__4cXyzFRC4cXyz
/* 80751FF4  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80751FF8  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80751FFC  38 BD 04 68 */	addi r5, r29, 0x468
/* 80752000  4B FF A4 D9 */	bl __register_global_object
/* 80752004  38 61 03 20 */	addi r3, r1, 0x320
/* 80752008  38 80 FF FF */	li r4, -1
/* 8075200C  48 00 52 C1 */	bl __dt__4cXyzFv
/* 80752010  38 61 03 14 */	addi r3, r1, 0x314
/* 80752014  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80752018  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 8075201C  C0 7F 02 A0 */	lfs f3, 0x2a0(r31)
/* 80752020  48 00 56 6D */	bl __ct__4cXyzFfff
/* 80752024  38 7D 05 04 */	addi r3, r29, 0x504
/* 80752028  38 63 00 78 */	addi r3, r3, 0x78
/* 8075202C  38 81 03 14 */	addi r4, r1, 0x314
/* 80752030  48 00 56 41 */	bl __ct__4cXyzFRC4cXyz
/* 80752034  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80752038  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8075203C  38 BD 04 74 */	addi r5, r29, 0x474
/* 80752040  4B FF A4 99 */	bl __register_global_object
/* 80752044  38 61 03 14 */	addi r3, r1, 0x314
/* 80752048  38 80 FF FF */	li r4, -1
/* 8075204C  48 00 52 81 */	bl __dt__4cXyzFv
/* 80752050  38 61 03 08 */	addi r3, r1, 0x308
/* 80752054  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 80752058  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8075205C  C0 7F 02 A8 */	lfs f3, 0x2a8(r31)
/* 80752060  48 00 56 2D */	bl __ct__4cXyzFfff
/* 80752064  38 7D 05 04 */	addi r3, r29, 0x504
/* 80752068  38 63 00 84 */	addi r3, r3, 0x84
/* 8075206C  38 81 03 08 */	addi r4, r1, 0x308
/* 80752070  48 00 56 01 */	bl __ct__4cXyzFRC4cXyz
/* 80752074  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80752078  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8075207C  38 BD 04 80 */	addi r5, r29, 0x480
/* 80752080  4B FF A4 59 */	bl __register_global_object
/* 80752084  38 61 03 08 */	addi r3, r1, 0x308
/* 80752088  38 80 FF FF */	li r4, -1
/* 8075208C  48 00 52 41 */	bl __dt__4cXyzFv
/* 80752090  38 61 02 FC */	addi r3, r1, 0x2fc
/* 80752094  C0 3F 02 AC */	lfs f1, 0x2ac(r31)
/* 80752098  C0 5F 02 B0 */	lfs f2, 0x2b0(r31)
/* 8075209C  C0 7F 02 B4 */	lfs f3, 0x2b4(r31)
/* 807520A0  48 00 55 ED */	bl __ct__4cXyzFfff
/* 807520A4  38 7D 05 04 */	addi r3, r29, 0x504
/* 807520A8  38 63 00 90 */	addi r3, r3, 0x90
/* 807520AC  38 81 02 FC */	addi r4, r1, 0x2fc
/* 807520B0  48 00 55 C1 */	bl __ct__4cXyzFRC4cXyz
/* 807520B4  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 807520B8  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 807520BC  38 BD 04 8C */	addi r5, r29, 0x48c
/* 807520C0  4B FF A4 19 */	bl __register_global_object
/* 807520C4  38 61 02 FC */	addi r3, r1, 0x2fc
/* 807520C8  38 80 FF FF */	li r4, -1
/* 807520CC  48 00 52 01 */	bl __dt__4cXyzFv
/* 807520D0  38 61 02 F0 */	addi r3, r1, 0x2f0
/* 807520D4  C0 3F 02 B8 */	lfs f1, 0x2b8(r31)
/* 807520D8  C0 5F 02 BC */	lfs f2, 0x2bc(r31)
/* 807520DC  C0 7F 02 C0 */	lfs f3, 0x2c0(r31)
/* 807520E0  48 00 55 AD */	bl __ct__4cXyzFfff
/* 807520E4  38 7D 05 04 */	addi r3, r29, 0x504
/* 807520E8  38 63 00 9C */	addi r3, r3, 0x9c
/* 807520EC  38 81 02 F0 */	addi r4, r1, 0x2f0
/* 807520F0  48 00 55 81 */	bl __ct__4cXyzFRC4cXyz
/* 807520F4  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 807520F8  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 807520FC  38 BD 04 98 */	addi r5, r29, 0x498
/* 80752100  4B FF A3 D9 */	bl __register_global_object
/* 80752104  38 61 02 F0 */	addi r3, r1, 0x2f0
/* 80752108  38 80 FF FF */	li r4, -1
/* 8075210C  48 00 51 C1 */	bl __dt__4cXyzFv
/* 80752110  38 61 02 E4 */	addi r3, r1, 0x2e4
/* 80752114  C0 3F 02 C4 */	lfs f1, 0x2c4(r31)
/* 80752118  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8075211C  C0 7F 02 C8 */	lfs f3, 0x2c8(r31)
/* 80752120  48 00 55 6D */	bl __ct__4cXyzFfff
/* 80752124  38 7D 05 04 */	addi r3, r29, 0x504
/* 80752128  38 63 00 A8 */	addi r3, r3, 0xa8
/* 8075212C  38 81 02 E4 */	addi r4, r1, 0x2e4
/* 80752130  48 00 55 41 */	bl __ct__4cXyzFRC4cXyz
/* 80752134  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80752138  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8075213C  38 BD 04 A4 */	addi r5, r29, 0x4a4
/* 80752140  4B FF A3 99 */	bl __register_global_object
/* 80752144  38 61 02 E4 */	addi r3, r1, 0x2e4
/* 80752148  38 80 FF FF */	li r4, -1
/* 8075214C  48 00 51 81 */	bl __dt__4cXyzFv
/* 80752150  38 61 02 D8 */	addi r3, r1, 0x2d8
/* 80752154  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 80752158  C0 5F 02 CC */	lfs f2, 0x2cc(r31)
/* 8075215C  C0 7F 02 A8 */	lfs f3, 0x2a8(r31)
/* 80752160  48 00 55 2D */	bl __ct__4cXyzFfff
/* 80752164  38 7D 05 04 */	addi r3, r29, 0x504
/* 80752168  38 63 00 B4 */	addi r3, r3, 0xb4
/* 8075216C  38 81 02 D8 */	addi r4, r1, 0x2d8
/* 80752170  48 00 55 01 */	bl __ct__4cXyzFRC4cXyz
/* 80752174  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80752178  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8075217C  38 BD 04 B0 */	addi r5, r29, 0x4b0
/* 80752180  4B FF A3 59 */	bl __register_global_object
/* 80752184  38 61 02 D8 */	addi r3, r1, 0x2d8
/* 80752188  38 80 FF FF */	li r4, -1
/* 8075218C  48 00 51 41 */	bl __dt__4cXyzFv
/* 80752190  38 61 02 CC */	addi r3, r1, 0x2cc
/* 80752194  C0 3F 02 D0 */	lfs f1, 0x2d0(r31)
/* 80752198  C0 5F 02 B0 */	lfs f2, 0x2b0(r31)
/* 8075219C  C0 7F 02 B4 */	lfs f3, 0x2b4(r31)
/* 807521A0  48 00 54 ED */	bl __ct__4cXyzFfff
/* 807521A4  38 7D 05 04 */	addi r3, r29, 0x504
/* 807521A8  38 63 00 C0 */	addi r3, r3, 0xc0
/* 807521AC  38 81 02 CC */	addi r4, r1, 0x2cc
/* 807521B0  48 00 54 C1 */	bl __ct__4cXyzFRC4cXyz
/* 807521B4  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 807521B8  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 807521BC  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 807521C0  4B FF A3 19 */	bl __register_global_object
/* 807521C4  38 61 02 CC */	addi r3, r1, 0x2cc
/* 807521C8  38 80 FF FF */	li r4, -1
/* 807521CC  48 00 51 01 */	bl __dt__4cXyzFv
/* 807521D0  38 61 02 C0 */	addi r3, r1, 0x2c0
/* 807521D4  C0 3F 02 D4 */	lfs f1, 0x2d4(r31)
/* 807521D8  C0 5F 02 BC */	lfs f2, 0x2bc(r31)
/* 807521DC  C0 7F 01 B0 */	lfs f3, 0x1b0(r31)
/* 807521E0  48 00 54 AD */	bl __ct__4cXyzFfff
/* 807521E4  38 7D 05 04 */	addi r3, r29, 0x504
/* 807521E8  38 63 00 CC */	addi r3, r3, 0xcc
/* 807521EC  38 81 02 C0 */	addi r4, r1, 0x2c0
/* 807521F0  48 00 54 81 */	bl __ct__4cXyzFRC4cXyz
/* 807521F4  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 807521F8  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 807521FC  38 BD 04 C8 */	addi r5, r29, 0x4c8
/* 80752200  4B FF A2 D9 */	bl __register_global_object
/* 80752204  38 61 02 C0 */	addi r3, r1, 0x2c0
/* 80752208  38 80 FF FF */	li r4, -1
/* 8075220C  48 00 50 C1 */	bl __dt__4cXyzFv
/* 80752210  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 80752214  C0 3F 02 D8 */	lfs f1, 0x2d8(r31)
/* 80752218  C0 5F 02 DC */	lfs f2, 0x2dc(r31)
/* 8075221C  C0 7F 02 E0 */	lfs f3, 0x2e0(r31)
/* 80752220  48 00 54 6D */	bl __ct__4cXyzFfff
/* 80752224  38 7D 05 04 */	addi r3, r29, 0x504
/* 80752228  38 63 00 D8 */	addi r3, r3, 0xd8
/* 8075222C  38 81 02 B4 */	addi r4, r1, 0x2b4
/* 80752230  48 00 54 41 */	bl __ct__4cXyzFRC4cXyz
/* 80752234  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80752238  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8075223C  38 BD 04 D4 */	addi r5, r29, 0x4d4
/* 80752240  4B FF A2 99 */	bl __register_global_object
/* 80752244  38 61 02 B4 */	addi r3, r1, 0x2b4
/* 80752248  38 80 FF FF */	li r4, -1
/* 8075224C  48 00 50 81 */	bl __dt__4cXyzFv
/* 80752250  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 80752254  C0 3F 02 E4 */	lfs f1, 0x2e4(r31)
/* 80752258  C0 5F 02 E8 */	lfs f2, 0x2e8(r31)
/* 8075225C  C0 7F 02 EC */	lfs f3, 0x2ec(r31)
/* 80752260  48 00 54 2D */	bl __ct__4cXyzFfff
/* 80752264  38 7D 05 04 */	addi r3, r29, 0x504
/* 80752268  38 63 00 E4 */	addi r3, r3, 0xe4
/* 8075226C  38 81 02 A8 */	addi r4, r1, 0x2a8
/* 80752270  48 00 54 01 */	bl __ct__4cXyzFRC4cXyz
/* 80752274  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 80752278  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 8075227C  38 BD 04 E0 */	addi r5, r29, 0x4e0
/* 80752280  4B FF A2 59 */	bl __register_global_object
/* 80752284  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 80752288  38 80 FF FF */	li r4, -1
/* 8075228C  48 00 50 41 */	bl __dt__4cXyzFv
/* 80752290  38 61 02 9C */	addi r3, r1, 0x29c
/* 80752294  C0 3F 02 F0 */	lfs f1, 0x2f0(r31)
/* 80752298  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 8075229C  C0 7F 02 F4 */	lfs f3, 0x2f4(r31)
/* 807522A0  48 00 53 ED */	bl __ct__4cXyzFfff
/* 807522A4  38 7D 05 04 */	addi r3, r29, 0x504
/* 807522A8  38 63 00 F0 */	addi r3, r3, 0xf0
/* 807522AC  38 81 02 9C */	addi r4, r1, 0x29c
/* 807522B0  48 00 53 C1 */	bl __ct__4cXyzFRC4cXyz
/* 807522B4  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 807522B8  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 807522BC  38 BD 04 EC */	addi r5, r29, 0x4ec
/* 807522C0  4B FF A2 19 */	bl __register_global_object
/* 807522C4  38 61 02 9C */	addi r3, r1, 0x29c
/* 807522C8  38 80 FF FF */	li r4, -1
/* 807522CC  48 00 50 01 */	bl __dt__4cXyzFv
/* 807522D0  38 61 02 90 */	addi r3, r1, 0x290
/* 807522D4  C0 3F 02 F8 */	lfs f1, 0x2f8(r31)
/* 807522D8  C0 5F 02 E8 */	lfs f2, 0x2e8(r31)
/* 807522DC  C0 7F 02 FC */	lfs f3, 0x2fc(r31)
/* 807522E0  48 00 53 AD */	bl __ct__4cXyzFfff
/* 807522E4  38 7D 05 04 */	addi r3, r29, 0x504
/* 807522E8  38 63 00 FC */	addi r3, r3, 0xfc
/* 807522EC  38 81 02 90 */	addi r4, r1, 0x290
/* 807522F0  48 00 53 81 */	bl __ct__4cXyzFRC4cXyz
/* 807522F4  3C 80 80 75 */	lis r4, __dt__4cXyzFv@ha
/* 807522F8  38 84 72 CC */	addi r4, r4, __dt__4cXyzFv@l
/* 807522FC  38 BD 04 F8 */	addi r5, r29, 0x4f8
/* 80752300  4B FF A1 D9 */	bl __register_global_object
/* 80752304  38 61 02 90 */	addi r3, r1, 0x290
/* 80752308  38 80 FF FF */	li r4, -1
/* 8075230C  48 00 4F C1 */	bl __dt__4cXyzFv
/* 80752310  38 00 00 01 */	li r0, 1
/* 80752314  98 1D 04 04 */	stb r0, 0x404(r29)
lbl_80752318:
/* 80752318  80 1E 05 B4 */	lwz r0, 0x5b4(r30)
/* 8075231C  2C 00 00 16 */	cmpwi r0, 0x16
/* 80752320  41 82 14 A8 */	beq lbl_807537C8
/* 80752324  40 80 00 88 */	bge lbl_807523AC
/* 80752328  2C 00 00 0C */	cmpwi r0, 0xc
/* 8075232C  41 82 0B A8 */	beq lbl_80752ED4
/* 80752330  40 80 00 40 */	bge lbl_80752370
/* 80752334  2C 00 00 03 */	cmpwi r0, 3
/* 80752338  41 82 03 54 */	beq lbl_8075268C
/* 8075233C  40 80 00 1C */	bge lbl_80752358
/* 80752340  2C 00 00 01 */	cmpwi r0, 1
/* 80752344  41 82 01 F8 */	beq lbl_8075253C
/* 80752348  40 80 03 08 */	bge lbl_80752650
/* 8075234C  2C 00 00 00 */	cmpwi r0, 0
/* 80752350  40 80 00 D0 */	bge lbl_80752420
/* 80752354  48 00 24 04 */	b lbl_80754758
lbl_80752358:
/* 80752358  2C 00 00 0A */	cmpwi r0, 0xa
/* 8075235C  41 82 04 AC */	beq lbl_80752808
/* 80752360  40 80 05 54 */	bge lbl_807528B4
/* 80752364  2C 00 00 05 */	cmpwi r0, 5
/* 80752368  40 80 23 F0 */	bge lbl_80754758
/* 8075236C  48 00 04 34 */	b lbl_807527A0
lbl_80752370:
/* 80752370  2C 00 00 11 */	cmpwi r0, 0x11
/* 80752374  41 82 11 90 */	beq lbl_80753504
/* 80752378  40 80 00 1C */	bge lbl_80752394
/* 8075237C  2C 00 00 0F */	cmpwi r0, 0xf
/* 80752380  41 82 0D 3C */	beq lbl_807530BC
/* 80752384  40 80 0F 34 */	bge lbl_807532B8
/* 80752388  2C 00 00 0E */	cmpwi r0, 0xe
/* 8075238C  40 80 0D 00 */	bge lbl_8075308C
/* 80752390  48 00 0B EC */	b lbl_80752F7C
lbl_80752394:
/* 80752394  2C 00 00 14 */	cmpwi r0, 0x14
/* 80752398  41 82 13 14 */	beq lbl_807536AC
/* 8075239C  40 80 13 CC */	bge lbl_80753768
/* 807523A0  2C 00 00 13 */	cmpwi r0, 0x13
/* 807523A4  40 80 12 9C */	bge lbl_80753640
/* 807523A8  48 00 11 BC */	b lbl_80753564
lbl_807523AC:
/* 807523AC  2C 00 00 68 */	cmpwi r0, 0x68
/* 807523B0  41 82 1F 68 */	beq lbl_80754318
/* 807523B4  40 80 00 3C */	bge lbl_807523F0
/* 807523B8  2C 00 00 64 */	cmpwi r0, 0x64
/* 807523BC  41 82 00 74 */	beq lbl_80752430
/* 807523C0  40 80 00 20 */	bge lbl_807523E0
/* 807523C4  2C 00 00 1E */	cmpwi r0, 0x1e
/* 807523C8  41 82 10 20 */	beq lbl_807533E8
/* 807523CC  40 80 23 8C */	bge lbl_80754758
/* 807523D0  2C 00 00 18 */	cmpwi r0, 0x18
/* 807523D4  41 82 17 C8 */	beq lbl_80753B9C
/* 807523D8  40 80 23 80 */	bge lbl_80754758
/* 807523DC  48 00 16 34 */	b lbl_80753A10
lbl_807523E0:
/* 807523E0  2C 00 00 66 */	cmpwi r0, 0x66
/* 807523E4  41 82 1B B4 */	beq lbl_80753F98
/* 807523E8  40 80 1E 14 */	bge lbl_807541FC
/* 807523EC  48 00 1A 5C */	b lbl_80753E48
lbl_807523F0:
/* 807523F0  2C 00 00 CB */	cmpwi r0, 0xcb
/* 807523F4  41 82 23 3C */	beq lbl_80754730
/* 807523F8  40 80 00 1C */	bge lbl_80752414
/* 807523FC  2C 00 00 C9 */	cmpwi r0, 0xc9
/* 80752400  41 82 21 14 */	beq lbl_80754514
/* 80752404  40 80 22 CC */	bge lbl_807546D0
/* 80752408  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 8075240C  40 80 1F C0 */	bge lbl_807543CC
/* 80752410  48 00 23 48 */	b lbl_80754758
lbl_80752414:
/* 80752414  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 80752418  41 82 23 40 */	beq lbl_80754758
/* 8075241C  48 00 23 3C */	b lbl_80754758
lbl_80752420:
/* 80752420  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 80752424  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80752428  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075242C  41 81 23 2C */	bgt lbl_80754758
lbl_80752430:
/* 80752430  38 7E 00 F4 */	addi r3, r30, 0xf4
/* 80752434  48 00 52 29 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 80752438  2C 03 00 00 */	cmpwi r3, 0
/* 8075243C  40 82 00 9C */	bne lbl_807524D8
/* 80752440  7F C3 F3 78 */	mr r3, r30
/* 80752444  38 80 00 02 */	li r4, 2
/* 80752448  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8075244C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80752450  38 C0 00 00 */	li r6, 0
/* 80752454  4B 8C 94 B4 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80752458  38 7E 00 F4 */	addi r3, r30, 0xf4
/* 8075245C  38 80 00 02 */	li r4, 2
/* 80752460  48 00 51 ED */	bl onCondition__11dEvt_info_cFUs
/* 80752464  7F C3 F3 78 */	mr r3, r30
/* 80752468  48 00 51 B9 */	bl fopAcM_searchPlayerAngleY__FPC10fopAc_ac_c
/* 8075246C  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 80752470  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80752474  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80752478  4B A2 F1 C8 */	b dCam_getBody__Fv
/* 8075247C  7C 64 1B 78 */	mr r4, r3
/* 80752480  38 61 02 84 */	addi r3, r1, 0x284
/* 80752484  4B A2 FA 14 */	b Center__9dCamera_cFv
/* 80752488  38 7E 08 44 */	addi r3, r30, 0x844
/* 8075248C  38 81 02 84 */	addi r4, r1, 0x284
/* 80752490  48 00 51 75 */	bl __as__4cXyzFRC4cXyz
/* 80752494  38 61 02 84 */	addi r3, r1, 0x284
/* 80752498  38 80 FF FF */	li r4, -1
/* 8075249C  48 00 4E 31 */	bl __dt__4cXyzFv
/* 807524A0  4B A2 F1 A0 */	b dCam_getBody__Fv
/* 807524A4  7C 64 1B 78 */	mr r4, r3
/* 807524A8  38 61 02 78 */	addi r3, r1, 0x278
/* 807524AC  4B A2 F9 B8 */	b Eye__9dCamera_cFv
/* 807524B0  38 7E 08 38 */	addi r3, r30, 0x838
/* 807524B4  38 81 02 78 */	addi r4, r1, 0x278
/* 807524B8  48 00 51 4D */	bl __as__4cXyzFRC4cXyz
/* 807524BC  38 61 02 78 */	addi r3, r1, 0x278
/* 807524C0  38 80 FF FF */	li r4, -1
/* 807524C4  48 00 4E 09 */	bl __dt__4cXyzFv
/* 807524C8  4B A2 F1 78 */	b dCam_getBody__Fv
/* 807524CC  48 00 51 29 */	bl Fovy__9dCamera_cFv
/* 807524D0  D0 3E 07 D8 */	stfs f1, 0x7d8(r30)
/* 807524D4  48 00 22 84 */	b lbl_80754758
lbl_807524D8:
/* 807524D8  38 7C 02 48 */	addi r3, r28, 0x248
/* 807524DC  4B A0 EF F4 */	b Stop__9dCamera_cFv
/* 807524E0  38 7C 02 48 */	addi r3, r28, 0x248
/* 807524E4  38 80 00 01 */	li r4, 1
/* 807524E8  4B A1 0B 24 */	b SetTrimSize__9dCamera_cFl
/* 807524EC  48 00 50 F9 */	bl daPy_getPlayerActorClass__Fv
/* 807524F0  48 00 50 E1 */	bl changeOriginalDemo__9daPy_py_cFv
/* 807524F4  80 1E 05 B4 */	lwz r0, 0x5b4(r30)
/* 807524F8  2C 00 00 00 */	cmpwi r0, 0
/* 807524FC  40 82 00 1C */	bne lbl_80752518
/* 80752500  48 00 50 E5 */	bl daPy_getPlayerActorClass__Fv
/* 80752504  38 80 00 04 */	li r4, 4
/* 80752508  38 A0 00 02 */	li r5, 2
/* 8075250C  38 C0 00 00 */	li r6, 0
/* 80752510  38 E0 00 00 */	li r7, 0
/* 80752514  48 00 50 A9 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_80752518:
/* 80752518  38 00 00 00 */	li r0, 0
/* 8075251C  B0 1E 07 DE */	sth r0, 0x7de(r30)
/* 80752520  B0 1D 00 8E */	sth r0, 0x8e(r29)
/* 80752524  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80752528  38 03 00 01 */	addi r0, r3, 1
/* 8075252C  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 80752530  38 00 00 02 */	li r0, 2
/* 80752534  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 80752538  48 00 22 20 */	b lbl_80754758
lbl_8075253C:
/* 8075253C  A8 1E 07 4E */	lha r0, 0x74e(r30)
/* 80752540  2C 00 00 00 */	cmpwi r0, 0
/* 80752544  41 82 00 54 */	beq lbl_80752598
/* 80752548  38 61 05 54 */	addi r3, r1, 0x554
/* 8075254C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80752550  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 80752554  C0 7F 03 00 */	lfs f3, 0x300(r31)
/* 80752558  48 00 50 55 */	bl set__4cXyzFfff
/* 8075255C  48 00 50 89 */	bl daPy_getPlayerActorClass__Fv
/* 80752560  38 81 05 54 */	addi r4, r1, 0x554
/* 80752564  38 A0 80 00 */	li r5, -32768
/* 80752568  38 C0 00 00 */	li r6, 0
/* 8075256C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80752570  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80752574  7D 89 03 A6 */	mtctr r12
/* 80752578  4E 80 04 21 */	bctrl 
/* 8075257C  48 00 50 69 */	bl daPy_getPlayerActorClass__Fv
/* 80752580  38 80 00 02 */	li r4, 2
/* 80752584  38 A0 00 00 */	li r5, 0
/* 80752588  38 C0 00 00 */	li r6, 0
/* 8075258C  38 E0 00 00 */	li r7, 0
/* 80752590  48 00 50 2D */	bl changeDemoMode__9daPy_py_cFUliis
/* 80752594  48 00 21 C4 */	b lbl_80754758
lbl_80752598:
/* 80752598  38 7E 08 44 */	addi r3, r30, 0x844
/* 8075259C  38 9D 01 6C */	addi r4, r29, 0x16c
/* 807525A0  48 00 4F F1 */	bl set__4cXyzFRC3Vec
/* 807525A4  38 7E 08 38 */	addi r3, r30, 0x838
/* 807525A8  38 9D 03 20 */	addi r4, r29, 0x320
/* 807525AC  48 00 4F E5 */	bl set__4cXyzFRC3Vec
/* 807525B0  38 61 02 6C */	addi r3, r1, 0x26c
/* 807525B4  38 9E 08 44 */	addi r4, r30, 0x844
/* 807525B8  48 00 50 B9 */	bl __ct__4cXyzFRC4cXyz
/* 807525BC  38 61 02 60 */	addi r3, r1, 0x260
/* 807525C0  38 9E 08 38 */	addi r4, r30, 0x838
/* 807525C4  48 00 50 AD */	bl __ct__4cXyzFRC4cXyz
/* 807525C8  38 7C 02 48 */	addi r3, r28, 0x248
/* 807525CC  38 81 02 6C */	addi r4, r1, 0x26c
/* 807525D0  38 A1 02 60 */	addi r5, r1, 0x260
/* 807525D4  4B A2 E4 D4 */	b Set__9dCamera_cF4cXyz4cXyz
/* 807525D8  38 61 02 60 */	addi r3, r1, 0x260
/* 807525DC  38 80 FF FF */	li r4, -1
/* 807525E0  48 00 4C ED */	bl __dt__4cXyzFv
/* 807525E4  38 61 02 6C */	addi r3, r1, 0x26c
/* 807525E8  38 80 FF FF */	li r4, -1
/* 807525EC  48 00 4C E1 */	bl __dt__4cXyzFv
/* 807525F0  38 00 00 02 */	li r0, 2
/* 807525F4  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 807525F8  38 00 00 32 */	li r0, 0x32
/* 807525FC  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 80752600  38 61 05 54 */	addi r3, r1, 0x554
/* 80752604  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80752608  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 8075260C  C0 7F 03 00 */	lfs f3, 0x300(r31)
/* 80752610  48 00 4F 9D */	bl set__4cXyzFfff
/* 80752614  48 00 4F D1 */	bl daPy_getPlayerActorClass__Fv
/* 80752618  38 81 05 54 */	addi r4, r1, 0x554
/* 8075261C  38 A0 80 00 */	li r5, -32768
/* 80752620  38 C0 00 00 */	li r6, 0
/* 80752624  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80752628  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8075262C  7D 89 03 A6 */	mtctr r12
/* 80752630  4E 80 04 21 */	bctrl 
/* 80752634  48 00 4F B1 */	bl daPy_getPlayerActorClass__Fv
/* 80752638  38 80 00 02 */	li r4, 2
/* 8075263C  38 A0 00 00 */	li r5, 0
/* 80752640  38 C0 00 00 */	li r6, 0
/* 80752644  38 E0 00 00 */	li r7, 0
/* 80752648  48 00 4F 75 */	bl changeDemoMode__9daPy_py_cFUliis
/* 8075264C  48 00 21 0C */	b lbl_80754758
lbl_80752650:
/* 80752650  38 61 05 54 */	addi r3, r1, 0x554
/* 80752654  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80752658  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 8075265C  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 80752660  48 00 4F 4D */	bl set__4cXyzFfff
/* 80752664  7F 63 DB 78 */	mr r3, r27
/* 80752668  38 81 05 54 */	addi r4, r1, 0x554
/* 8075266C  48 00 4F 09 */	bl changeDemoPos0__9daPy_py_cFPC4cXyz
/* 80752670  A8 1E 07 4E */	lha r0, 0x74e(r30)
/* 80752674  2C 00 00 00 */	cmpwi r0, 0
/* 80752678  40 82 20 E0 */	bne lbl_80754758
/* 8075267C  38 00 00 14 */	li r0, 0x14
/* 80752680  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 80752684  38 00 00 03 */	li r0, 3
/* 80752688  90 1E 05 B4 */	stw r0, 0x5b4(r30)
lbl_8075268C:
/* 8075268C  A8 1E 07 4E */	lha r0, 0x74e(r30)
/* 80752690  2C 00 00 00 */	cmpwi r0, 0
/* 80752694  40 82 20 C4 */	bne lbl_80754758
/* 80752698  38 7E 08 44 */	addi r3, r30, 0x844
/* 8075269C  3B 5D 01 6C */	addi r26, r29, 0x16c
/* 807526A0  3B 5A 00 60 */	addi r26, r26, 0x60
/* 807526A4  7F 44 D3 78 */	mr r4, r26
/* 807526A8  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 807526AC  C0 5F 01 24 */	lfs f2, 0x124(r31)
/* 807526B0  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 807526B4  4B B1 D4 04 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 807526B8  38 7E 08 38 */	addi r3, r30, 0x838
/* 807526BC  3B 7D 03 20 */	addi r27, r29, 0x320
/* 807526C0  3B 7B 00 60 */	addi r27, r27, 0x60
/* 807526C4  7F 64 DB 78 */	mr r4, r27
/* 807526C8  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 807526CC  C0 5F 01 24 */	lfs f2, 0x124(r31)
/* 807526D0  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 807526D4  4B B1 D3 E4 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 807526D8  38 61 02 54 */	addi r3, r1, 0x254
/* 807526DC  38 9E 08 44 */	addi r4, r30, 0x844
/* 807526E0  48 00 4F 91 */	bl __ct__4cXyzFRC4cXyz
/* 807526E4  38 61 02 48 */	addi r3, r1, 0x248
/* 807526E8  38 9E 08 38 */	addi r4, r30, 0x838
/* 807526EC  48 00 4F 85 */	bl __ct__4cXyzFRC4cXyz
/* 807526F0  38 7C 02 48 */	addi r3, r28, 0x248
/* 807526F4  38 81 02 54 */	addi r4, r1, 0x254
/* 807526F8  38 A1 02 48 */	addi r5, r1, 0x248
/* 807526FC  4B A2 E3 AC */	b Set__9dCamera_cF4cXyz4cXyz
/* 80752700  38 61 02 48 */	addi r3, r1, 0x248
/* 80752704  38 80 FF FF */	li r4, -1
/* 80752708  48 00 4B C5 */	bl __dt__4cXyzFv
/* 8075270C  38 61 02 54 */	addi r3, r1, 0x254
/* 80752710  38 80 FF FF */	li r4, -1
/* 80752714  48 00 4B B9 */	bl __dt__4cXyzFv
/* 80752718  38 61 02 3C */	addi r3, r1, 0x23c
/* 8075271C  38 9E 08 44 */	addi r4, r30, 0x844
/* 80752720  7F 45 D3 78 */	mr r5, r26
/* 80752724  4B B1 44 10 */	b __mi__4cXyzCFRC3Vec
/* 80752728  38 61 05 54 */	addi r3, r1, 0x554
/* 8075272C  38 81 02 3C */	addi r4, r1, 0x23c
/* 80752730  48 00 4E D5 */	bl __as__4cXyzFRC4cXyz
/* 80752734  38 61 02 3C */	addi r3, r1, 0x23c
/* 80752738  38 80 FF FF */	li r4, -1
/* 8075273C  48 00 4B 91 */	bl __dt__4cXyzFv
/* 80752740  38 61 02 30 */	addi r3, r1, 0x230
/* 80752744  38 9E 08 38 */	addi r4, r30, 0x838
/* 80752748  7F 65 DB 78 */	mr r5, r27
/* 8075274C  4B B1 43 E8 */	b __mi__4cXyzCFRC3Vec
/* 80752750  38 61 05 48 */	addi r3, r1, 0x548
/* 80752754  38 81 02 30 */	addi r4, r1, 0x230
/* 80752758  48 00 4E AD */	bl __as__4cXyzFRC4cXyz
/* 8075275C  38 61 02 30 */	addi r3, r1, 0x230
/* 80752760  38 80 FF FF */	li r4, -1
/* 80752764  48 00 4B 69 */	bl __dt__4cXyzFv
/* 80752768  38 61 05 54 */	addi r3, r1, 0x554
/* 8075276C  48 00 4C F5 */	bl abs__4cXyzCFv
/* 80752770  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80752774  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80752778  41 81 1F E0 */	bgt lbl_80754758
/* 8075277C  38 61 05 48 */	addi r3, r1, 0x548
/* 80752780  48 00 4C E1 */	bl abs__4cXyzCFv
/* 80752784  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80752788  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075278C  41 81 1F CC */	bgt lbl_80754758
/* 80752790  38 00 00 04 */	li r0, 4
/* 80752794  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 80752798  38 00 00 32 */	li r0, 0x32
/* 8075279C  B0 1E 07 4E */	sth r0, 0x74e(r30)
lbl_807527A0:
/* 807527A0  A8 1E 07 4E */	lha r0, 0x74e(r30)
/* 807527A4  2C 00 00 00 */	cmpwi r0, 0
/* 807527A8  40 82 1F B0 */	bne lbl_80754758
/* 807527AC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807527B0  38 9D 05 04 */	addi r4, r29, 0x504
/* 807527B4  48 00 4D DD */	bl set__4cXyzFRC3Vec
/* 807527B8  3B 20 00 01 */	li r25, 1
lbl_807527BC:
/* 807527BC  3C 99 FF FF */	addis r4, r25, 0xffff
/* 807527C0  38 60 01 DA */	li r3, 0x1da
/* 807527C4  38 84 00 07 */	addi r4, r4, 7
/* 807527C8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 807527CC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807527D0  7C 06 07 74 */	extsb r6, r0
/* 807527D4  38 FE 04 E4 */	addi r7, r30, 0x4e4
/* 807527D8  39 00 00 00 */	li r8, 0
/* 807527DC  39 20 FF FF */	li r9, -1
/* 807527E0  4B 8C 75 B8 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 807527E4  3B 39 00 01 */	addi r25, r25, 1
/* 807527E8  2C 19 00 04 */	cmpwi r25, 4
/* 807527EC  41 80 FF D0 */	blt lbl_807527BC
/* 807527F0  38 00 00 02 */	li r0, 2
/* 807527F4  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 807527F8  38 00 00 07 */	li r0, 7
/* 807527FC  B0 1D 00 8E */	sth r0, 0x8e(r29)
/* 80752800  38 00 00 0A */	li r0, 0xa
/* 80752804  90 1E 05 B4 */	stw r0, 0x5b4(r30)
lbl_80752808:
/* 80752808  38 00 00 00 */	li r0, 0
/* 8075280C  98 1E 07 59 */	stb r0, 0x759(r30)
/* 80752810  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80752814  38 9D 05 04 */	addi r4, r29, 0x504
/* 80752818  48 00 4D 79 */	bl set__4cXyzFRC3Vec
/* 8075281C  7F C3 F3 78 */	mr r3, r30
/* 80752820  38 80 00 0A */	li r4, 0xa
/* 80752824  4B FF 9D C9 */	bl mArg0Check__FP10e_po_classs
/* 80752828  2C 03 00 00 */	cmpwi r3, 0
/* 8075282C  41 82 00 18 */	beq lbl_80752844
/* 80752830  38 00 FF F3 */	li r0, -13
/* 80752834  B0 1E 07 DE */	sth r0, 0x7de(r30)
/* 80752838  38 00 FF FE */	li r0, -2
/* 8075283C  B0 1E 07 E2 */	sth r0, 0x7e2(r30)
/* 80752840  48 00 00 14 */	b lbl_80752854
lbl_80752844:
/* 80752844  38 00 FF F1 */	li r0, -15
/* 80752848  B0 1E 07 DE */	sth r0, 0x7de(r30)
/* 8075284C  38 00 00 00 */	li r0, 0
/* 80752850  B0 1E 07 E2 */	sth r0, 0x7e2(r30)
lbl_80752854:
/* 80752854  38 00 00 64 */	li r0, 0x64
/* 80752858  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 8075285C  38 61 05 54 */	addi r3, r1, 0x554
/* 80752860  38 9D 05 04 */	addi r4, r29, 0x504
/* 80752864  38 84 00 0C */	addi r4, r4, 0xc
/* 80752868  48 00 4D 29 */	bl set__4cXyzFRC3Vec
/* 8075286C  38 61 02 24 */	addi r3, r1, 0x224
/* 80752870  38 81 05 54 */	addi r4, r1, 0x554
/* 80752874  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80752878  4B B1 42 BC */	b __mi__4cXyzCFRC3Vec
/* 8075287C  38 61 05 48 */	addi r3, r1, 0x548
/* 80752880  38 81 02 24 */	addi r4, r1, 0x224
/* 80752884  48 00 4D 81 */	bl __as__4cXyzFRC4cXyz
/* 80752888  38 61 02 24 */	addi r3, r1, 0x224
/* 8075288C  38 80 FF FF */	li r4, -1
/* 80752890  48 00 4A 3D */	bl __dt__4cXyzFv
/* 80752894  38 61 05 48 */	addi r3, r1, 0x548
/* 80752898  4B B1 48 90 */	b atan2sX_Z__4cXyzCFv
/* 8075289C  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 807528A0  38 61 05 48 */	addi r3, r1, 0x548
/* 807528A4  4B B1 48 AC */	b atan2sY_XZ__4cXyzCFv
/* 807528A8  B0 7E 04 DC */	sth r3, 0x4dc(r30)
/* 807528AC  38 00 00 0B */	li r0, 0xb
/* 807528B0  90 1E 05 B4 */	stw r0, 0x5b4(r30)
lbl_807528B4:
/* 807528B4  7F C3 F3 78 */	mr r3, r30
/* 807528B8  38 80 00 07 */	li r4, 7
/* 807528BC  4B FF 9D 31 */	bl mArg0Check__FP10e_po_classs
/* 807528C0  2C 03 00 00 */	cmpwi r3, 0
/* 807528C4  41 82 00 7C */	beq lbl_80752940
/* 807528C8  38 7E 08 44 */	addi r3, r30, 0x844
/* 807528CC  38 9D 01 6C */	addi r4, r29, 0x16c
/* 807528D0  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 807528D4  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 807528D8  C0 7F 00 94 */	lfs f3, 0x94(r31)
/* 807528DC  38 84 00 0C */	addi r4, r4, 0xc
/* 807528E0  4B B1 D1 D8 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 807528E4  38 7E 08 38 */	addi r3, r30, 0x838
/* 807528E8  38 9D 03 20 */	addi r4, r29, 0x320
/* 807528EC  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 807528F0  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 807528F4  C0 7F 00 94 */	lfs f3, 0x94(r31)
/* 807528F8  38 84 00 0C */	addi r4, r4, 0xc
/* 807528FC  4B B1 D1 BC */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80752900  38 61 02 18 */	addi r3, r1, 0x218
/* 80752904  38 9E 08 44 */	addi r4, r30, 0x844
/* 80752908  48 00 4D 69 */	bl __ct__4cXyzFRC4cXyz
/* 8075290C  38 61 02 0C */	addi r3, r1, 0x20c
/* 80752910  38 9E 08 38 */	addi r4, r30, 0x838
/* 80752914  48 00 4D 5D */	bl __ct__4cXyzFRC4cXyz
/* 80752918  38 7C 02 48 */	addi r3, r28, 0x248
/* 8075291C  38 81 02 18 */	addi r4, r1, 0x218
/* 80752920  38 A1 02 0C */	addi r5, r1, 0x20c
/* 80752924  4B A2 E1 84 */	b Set__9dCamera_cF4cXyz4cXyz
/* 80752928  38 61 02 0C */	addi r3, r1, 0x20c
/* 8075292C  38 80 FF FF */	li r4, -1
/* 80752930  48 00 49 9D */	bl __dt__4cXyzFv
/* 80752934  38 61 02 18 */	addi r3, r1, 0x218
/* 80752938  38 80 FF FF */	li r4, -1
/* 8075293C  48 00 49 91 */	bl __dt__4cXyzFv
lbl_80752940:
/* 80752940  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80752944  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80752948  C0 5F 03 04 */	lfs f2, 0x304(r31)
/* 8075294C  C0 7F 03 08 */	lfs f3, 0x308(r31)
/* 80752950  4B B1 D0 EC */	b cLib_addCalc2__FPffff
/* 80752954  C0 5F 03 0C */	lfs f2, 0x30c(r31)
/* 80752958  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 8075295C  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80752960  EC 01 00 24 */	fdivs f0, f1, f0
/* 80752964  EC 02 00 2A */	fadds f0, f2, f0
/* 80752968  D0 1E 08 08 */	stfs f0, 0x808(r30)
/* 8075296C  A8 7E 07 DE */	lha r3, 0x7de(r30)
/* 80752970  38 03 00 01 */	addi r0, r3, 1
/* 80752974  B0 1E 07 DE */	sth r0, 0x7de(r30)
/* 80752978  A8 7E 07 E2 */	lha r3, 0x7e2(r30)
/* 8075297C  38 03 00 01 */	addi r0, r3, 1
/* 80752980  B0 1E 07 E2 */	sth r0, 0x7e2(r30)
/* 80752984  7F C3 F3 78 */	mr r3, r30
/* 80752988  38 80 00 07 */	li r4, 7
/* 8075298C  4B FF 9C 61 */	bl mArg0Check__FP10e_po_classs
/* 80752990  2C 03 00 00 */	cmpwi r3, 0
/* 80752994  41 82 01 14 */	beq lbl_80752AA8
/* 80752998  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 8075299C  A8 1E 07 DE */	lha r0, 0x7de(r30)
/* 807529A0  C8 3F 03 40 */	lfd f1, 0x340(r31)
/* 807529A4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807529A8  90 01 05 74 */	stw r0, 0x574(r1)
/* 807529AC  3C 00 43 30 */	lis r0, 0x4330
/* 807529B0  90 01 05 70 */	stw r0, 0x570(r1)
/* 807529B4  C8 01 05 70 */	lfd f0, 0x570(r1)
/* 807529B8  EC 00 08 28 */	fsubs f0, f0, f1
/* 807529BC  EC 02 00 32 */	fmuls f0, f2, f0
/* 807529C0  FC 00 00 1E */	fctiwz f0, f0
/* 807529C4  D8 01 05 78 */	stfd f0, 0x578(r1)
/* 807529C8  80 61 05 7C */	lwz r3, 0x57c(r1)
/* 807529CC  48 00 4A 81 */	bl cM_ssin__Fs
/* 807529D0  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 807529D4  EC 00 00 72 */	fmuls f0, f0, f1
/* 807529D8  FC 00 00 1E */	fctiwz f0, f0
/* 807529DC  D8 01 05 80 */	stfd f0, 0x580(r1)
/* 807529E0  80 61 05 84 */	lwz r3, 0x584(r1)
/* 807529E4  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 807529E8  7C 00 1A 14 */	add r0, r0, r3
/* 807529EC  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 807529F0  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 807529F4  A8 1E 07 E2 */	lha r0, 0x7e2(r30)
/* 807529F8  C8 3F 03 40 */	lfd f1, 0x340(r31)
/* 807529FC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80752A00  90 01 05 8C */	stw r0, 0x58c(r1)
/* 80752A04  3C 00 43 30 */	lis r0, 0x4330
/* 80752A08  90 01 05 88 */	stw r0, 0x588(r1)
/* 80752A0C  C8 01 05 88 */	lfd f0, 0x588(r1)
/* 80752A10  EC 00 08 28 */	fsubs f0, f0, f1
/* 80752A14  EC 02 00 32 */	fmuls f0, f2, f0
/* 80752A18  FC 00 00 1E */	fctiwz f0, f0
/* 80752A1C  D8 01 05 90 */	stfd f0, 0x590(r1)
/* 80752A20  80 61 05 94 */	lwz r3, 0x594(r1)
/* 80752A24  48 00 4A 11 */	bl cM_scos__Fs
/* 80752A28  C0 1F 03 10 */	lfs f0, 0x310(r31)
/* 80752A2C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80752A30  FC 00 00 1E */	fctiwz f0, f0
/* 80752A34  D8 01 05 98 */	stfd f0, 0x598(r1)
/* 80752A38  80 61 05 9C */	lwz r3, 0x59c(r1)
/* 80752A3C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80752A40  7C 00 1A 14 */	add r0, r0, r3
/* 80752A44  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80752A48  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80752A4C  A8 1E 07 E2 */	lha r0, 0x7e2(r30)
/* 80752A50  C8 3F 03 40 */	lfd f1, 0x340(r31)
/* 80752A54  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80752A58  90 01 05 A4 */	stw r0, 0x5a4(r1)
/* 80752A5C  3C 00 43 30 */	lis r0, 0x4330
/* 80752A60  90 01 05 A0 */	stw r0, 0x5a0(r1)
/* 80752A64  C8 01 05 A0 */	lfd f0, 0x5a0(r1)
/* 80752A68  EC 00 08 28 */	fsubs f0, f0, f1
/* 80752A6C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80752A70  FC 00 00 1E */	fctiwz f0, f0
/* 80752A74  D8 01 05 A8 */	stfd f0, 0x5a8(r1)
/* 80752A78  80 61 05 AC */	lwz r3, 0x5ac(r1)
/* 80752A7C  48 00 49 B9 */	bl cM_scos__Fs
/* 80752A80  FC 20 08 50 */	fneg f1, f1
/* 80752A84  C0 1F 03 10 */	lfs f0, 0x310(r31)
/* 80752A88  EC 00 00 72 */	fmuls f0, f0, f1
/* 80752A8C  FC 00 00 1E */	fctiwz f0, f0
/* 80752A90  D8 01 05 B0 */	stfd f0, 0x5b0(r1)
/* 80752A94  80 61 05 B4 */	lwz r3, 0x5b4(r1)
/* 80752A98  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80752A9C  7C 00 1A 14 */	add r0, r0, r3
/* 80752AA0  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 80752AA4  48 00 03 54 */	b lbl_80752DF8
lbl_80752AA8:
/* 80752AA8  7F C3 F3 78 */	mr r3, r30
/* 80752AAC  38 80 00 08 */	li r4, 8
/* 80752AB0  4B FF 9B 3D */	bl mArg0Check__FP10e_po_classs
/* 80752AB4  2C 03 00 00 */	cmpwi r3, 0
/* 80752AB8  41 82 01 14 */	beq lbl_80752BCC
/* 80752ABC  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80752AC0  A8 1E 07 DE */	lha r0, 0x7de(r30)
/* 80752AC4  C8 3F 03 40 */	lfd f1, 0x340(r31)
/* 80752AC8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80752ACC  90 01 05 B4 */	stw r0, 0x5b4(r1)
/* 80752AD0  3C 00 43 30 */	lis r0, 0x4330
/* 80752AD4  90 01 05 B0 */	stw r0, 0x5b0(r1)
/* 80752AD8  C8 01 05 B0 */	lfd f0, 0x5b0(r1)
/* 80752ADC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80752AE0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80752AE4  FC 00 00 1E */	fctiwz f0, f0
/* 80752AE8  D8 01 05 A8 */	stfd f0, 0x5a8(r1)
/* 80752AEC  80 61 05 AC */	lwz r3, 0x5ac(r1)
/* 80752AF0  48 00 49 5D */	bl cM_ssin__Fs
/* 80752AF4  C0 1F 03 14 */	lfs f0, 0x314(r31)
/* 80752AF8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80752AFC  FC 00 00 1E */	fctiwz f0, f0
/* 80752B00  D8 01 05 A0 */	stfd f0, 0x5a0(r1)
/* 80752B04  80 61 05 A4 */	lwz r3, 0x5a4(r1)
/* 80752B08  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80752B0C  7C 00 1A 14 */	add r0, r0, r3
/* 80752B10  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80752B14  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80752B18  A8 1E 07 E2 */	lha r0, 0x7e2(r30)
/* 80752B1C  C8 3F 03 40 */	lfd f1, 0x340(r31)
/* 80752B20  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80752B24  90 01 05 9C */	stw r0, 0x59c(r1)
/* 80752B28  3C 00 43 30 */	lis r0, 0x4330
/* 80752B2C  90 01 05 98 */	stw r0, 0x598(r1)
/* 80752B30  C8 01 05 98 */	lfd f0, 0x598(r1)
/* 80752B34  EC 00 08 28 */	fsubs f0, f0, f1
/* 80752B38  EC 02 00 32 */	fmuls f0, f2, f0
/* 80752B3C  FC 00 00 1E */	fctiwz f0, f0
/* 80752B40  D8 01 05 90 */	stfd f0, 0x590(r1)
/* 80752B44  80 61 05 94 */	lwz r3, 0x594(r1)
/* 80752B48  48 00 48 ED */	bl cM_scos__Fs
/* 80752B4C  C0 1F 03 10 */	lfs f0, 0x310(r31)
/* 80752B50  EC 00 00 72 */	fmuls f0, f0, f1
/* 80752B54  FC 00 00 1E */	fctiwz f0, f0
/* 80752B58  D8 01 05 88 */	stfd f0, 0x588(r1)
/* 80752B5C  80 61 05 8C */	lwz r3, 0x58c(r1)
/* 80752B60  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80752B64  7C 00 1A 14 */	add r0, r0, r3
/* 80752B68  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80752B6C  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80752B70  A8 1E 07 E2 */	lha r0, 0x7e2(r30)
/* 80752B74  C8 3F 03 40 */	lfd f1, 0x340(r31)
/* 80752B78  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80752B7C  90 01 05 84 */	stw r0, 0x584(r1)
/* 80752B80  3C 00 43 30 */	lis r0, 0x4330
/* 80752B84  90 01 05 80 */	stw r0, 0x580(r1)
/* 80752B88  C8 01 05 80 */	lfd f0, 0x580(r1)
/* 80752B8C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80752B90  EC 02 00 32 */	fmuls f0, f2, f0
/* 80752B94  FC 00 00 1E */	fctiwz f0, f0
/* 80752B98  D8 01 05 78 */	stfd f0, 0x578(r1)
/* 80752B9C  80 61 05 7C */	lwz r3, 0x57c(r1)
/* 80752BA0  48 00 48 95 */	bl cM_scos__Fs
/* 80752BA4  FC 20 08 50 */	fneg f1, f1
/* 80752BA8  C0 1F 03 10 */	lfs f0, 0x310(r31)
/* 80752BAC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80752BB0  FC 00 00 1E */	fctiwz f0, f0
/* 80752BB4  D8 01 05 70 */	stfd f0, 0x570(r1)
/* 80752BB8  80 61 05 74 */	lwz r3, 0x574(r1)
/* 80752BBC  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80752BC0  7C 00 1A 14 */	add r0, r0, r3
/* 80752BC4  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 80752BC8  48 00 02 30 */	b lbl_80752DF8
lbl_80752BCC:
/* 80752BCC  7F C3 F3 78 */	mr r3, r30
/* 80752BD0  38 80 00 09 */	li r4, 9
/* 80752BD4  4B FF 9A 19 */	bl mArg0Check__FP10e_po_classs
/* 80752BD8  2C 03 00 00 */	cmpwi r3, 0
/* 80752BDC  41 82 01 10 */	beq lbl_80752CEC
/* 80752BE0  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80752BE4  A8 1E 07 DE */	lha r0, 0x7de(r30)
/* 80752BE8  C8 3F 03 40 */	lfd f1, 0x340(r31)
/* 80752BEC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80752BF0  90 01 05 B4 */	stw r0, 0x5b4(r1)
/* 80752BF4  3C 00 43 30 */	lis r0, 0x4330
/* 80752BF8  90 01 05 B0 */	stw r0, 0x5b0(r1)
/* 80752BFC  C8 01 05 B0 */	lfd f0, 0x5b0(r1)
/* 80752C00  EC 00 08 28 */	fsubs f0, f0, f1
/* 80752C04  EC 02 00 32 */	fmuls f0, f2, f0
/* 80752C08  FC 00 00 1E */	fctiwz f0, f0
/* 80752C0C  D8 01 05 A8 */	stfd f0, 0x5a8(r1)
/* 80752C10  80 61 05 AC */	lwz r3, 0x5ac(r1)
/* 80752C14  48 00 48 39 */	bl cM_ssin__Fs
/* 80752C18  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80752C1C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80752C20  FC 00 00 1E */	fctiwz f0, f0
/* 80752C24  D8 01 05 A0 */	stfd f0, 0x5a0(r1)
/* 80752C28  80 61 05 A4 */	lwz r3, 0x5a4(r1)
/* 80752C2C  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80752C30  7C 03 00 50 */	subf r0, r3, r0
/* 80752C34  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80752C38  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80752C3C  A8 1E 07 E2 */	lha r0, 0x7e2(r30)
/* 80752C40  C8 3F 03 40 */	lfd f1, 0x340(r31)
/* 80752C44  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80752C48  90 01 05 9C */	stw r0, 0x59c(r1)
/* 80752C4C  3C 00 43 30 */	lis r0, 0x4330
/* 80752C50  90 01 05 98 */	stw r0, 0x598(r1)
/* 80752C54  C8 01 05 98 */	lfd f0, 0x598(r1)
/* 80752C58  EC 00 08 28 */	fsubs f0, f0, f1
/* 80752C5C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80752C60  FC 00 00 1E */	fctiwz f0, f0
/* 80752C64  D8 01 05 90 */	stfd f0, 0x590(r1)
/* 80752C68  80 61 05 94 */	lwz r3, 0x594(r1)
/* 80752C6C  48 00 47 C9 */	bl cM_scos__Fs
/* 80752C70  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80752C74  EC 02 00 72 */	fmuls f0, f2, f1
/* 80752C78  FC 00 00 1E */	fctiwz f0, f0
/* 80752C7C  D8 01 05 88 */	stfd f0, 0x588(r1)
/* 80752C80  80 61 05 8C */	lwz r3, 0x58c(r1)
/* 80752C84  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80752C88  7C 03 00 50 */	subf r0, r3, r0
/* 80752C8C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80752C90  A8 1E 07 E2 */	lha r0, 0x7e2(r30)
/* 80752C94  C8 3F 03 40 */	lfd f1, 0x340(r31)
/* 80752C98  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80752C9C  90 01 05 84 */	stw r0, 0x584(r1)
/* 80752CA0  3C 00 43 30 */	lis r0, 0x4330
/* 80752CA4  90 01 05 80 */	stw r0, 0x580(r1)
/* 80752CA8  C8 01 05 80 */	lfd f0, 0x580(r1)
/* 80752CAC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80752CB0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80752CB4  FC 00 00 1E */	fctiwz f0, f0
/* 80752CB8  D8 01 05 78 */	stfd f0, 0x578(r1)
/* 80752CBC  80 61 05 7C */	lwz r3, 0x57c(r1)
/* 80752CC0  48 00 47 75 */	bl cM_scos__Fs
/* 80752CC4  FC 20 08 50 */	fneg f1, f1
/* 80752CC8  C0 1F 03 10 */	lfs f0, 0x310(r31)
/* 80752CCC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80752CD0  FC 00 00 1E */	fctiwz f0, f0
/* 80752CD4  D8 01 05 70 */	stfd f0, 0x570(r1)
/* 80752CD8  80 61 05 74 */	lwz r3, 0x574(r1)
/* 80752CDC  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80752CE0  7C 03 00 50 */	subf r0, r3, r0
/* 80752CE4  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 80752CE8  48 00 01 10 */	b lbl_80752DF8
lbl_80752CEC:
/* 80752CEC  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80752CF0  A8 1E 07 DE */	lha r0, 0x7de(r30)
/* 80752CF4  C8 3F 03 40 */	lfd f1, 0x340(r31)
/* 80752CF8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80752CFC  90 01 05 B4 */	stw r0, 0x5b4(r1)
/* 80752D00  3C 00 43 30 */	lis r0, 0x4330
/* 80752D04  90 01 05 B0 */	stw r0, 0x5b0(r1)
/* 80752D08  C8 01 05 B0 */	lfd f0, 0x5b0(r1)
/* 80752D0C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80752D10  EC 02 00 32 */	fmuls f0, f2, f0
/* 80752D14  FC 00 00 1E */	fctiwz f0, f0
/* 80752D18  D8 01 05 A8 */	stfd f0, 0x5a8(r1)
/* 80752D1C  80 61 05 AC */	lwz r3, 0x5ac(r1)
/* 80752D20  48 00 47 2D */	bl cM_ssin__Fs
/* 80752D24  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80752D28  EC 00 00 72 */	fmuls f0, f0, f1
/* 80752D2C  FC 00 00 1E */	fctiwz f0, f0
/* 80752D30  D8 01 05 A0 */	stfd f0, 0x5a0(r1)
/* 80752D34  80 61 05 A4 */	lwz r3, 0x5a4(r1)
/* 80752D38  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80752D3C  7C 03 00 50 */	subf r0, r3, r0
/* 80752D40  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80752D44  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80752D48  A8 1E 07 E2 */	lha r0, 0x7e2(r30)
/* 80752D4C  C8 3F 03 40 */	lfd f1, 0x340(r31)
/* 80752D50  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80752D54  90 01 05 9C */	stw r0, 0x59c(r1)
/* 80752D58  3C 00 43 30 */	lis r0, 0x4330
/* 80752D5C  90 01 05 98 */	stw r0, 0x598(r1)
/* 80752D60  C8 01 05 98 */	lfd f0, 0x598(r1)
/* 80752D64  EC 00 08 28 */	fsubs f0, f0, f1
/* 80752D68  EC 02 00 32 */	fmuls f0, f2, f0
/* 80752D6C  FC 00 00 1E */	fctiwz f0, f0
/* 80752D70  D8 01 05 90 */	stfd f0, 0x590(r1)
/* 80752D74  80 61 05 94 */	lwz r3, 0x594(r1)
/* 80752D78  48 00 46 BD */	bl cM_scos__Fs
/* 80752D7C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80752D80  EC 00 00 72 */	fmuls f0, f0, f1
/* 80752D84  FC 00 00 1E */	fctiwz f0, f0
/* 80752D88  D8 01 05 88 */	stfd f0, 0x588(r1)
/* 80752D8C  80 61 05 8C */	lwz r3, 0x58c(r1)
/* 80752D90  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80752D94  7C 03 00 50 */	subf r0, r3, r0
/* 80752D98  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80752D9C  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80752DA0  A8 1E 07 E2 */	lha r0, 0x7e2(r30)
/* 80752DA4  C8 3F 03 40 */	lfd f1, 0x340(r31)
/* 80752DA8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80752DAC  90 01 05 84 */	stw r0, 0x584(r1)
/* 80752DB0  3C 00 43 30 */	lis r0, 0x4330
/* 80752DB4  90 01 05 80 */	stw r0, 0x580(r1)
/* 80752DB8  C8 01 05 80 */	lfd f0, 0x580(r1)
/* 80752DBC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80752DC0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80752DC4  FC 00 00 1E */	fctiwz f0, f0
/* 80752DC8  D8 01 05 78 */	stfd f0, 0x578(r1)
/* 80752DCC  80 61 05 7C */	lwz r3, 0x57c(r1)
/* 80752DD0  48 00 46 65 */	bl cM_scos__Fs
/* 80752DD4  FC 20 08 50 */	fneg f1, f1
/* 80752DD8  C0 1F 03 10 */	lfs f0, 0x310(r31)
/* 80752DDC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80752DE0  FC 00 00 1E */	fctiwz f0, f0
/* 80752DE4  D8 01 05 70 */	stfd f0, 0x570(r1)
/* 80752DE8  80 61 05 74 */	lwz r3, 0x574(r1)
/* 80752DEC  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80752DF0  7C 03 00 50 */	subf r0, r3, r0
/* 80752DF4  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
lbl_80752DF8:
/* 80752DF8  A8 1E 07 4E */	lha r0, 0x74e(r30)
/* 80752DFC  2C 00 00 00 */	cmpwi r0, 0
/* 80752E00  40 82 19 58 */	bne lbl_80754758
/* 80752E04  7F C3 F3 78 */	mr r3, r30
/* 80752E08  38 80 00 07 */	li r4, 7
/* 80752E0C  4B FF 97 E1 */	bl mArg0Check__FP10e_po_classs
/* 80752E10  2C 03 00 00 */	cmpwi r3, 0
/* 80752E14  41 82 00 64 */	beq lbl_80752E78
/* 80752E18  38 7E 08 44 */	addi r3, r30, 0x844
/* 80752E1C  38 9D 01 6C */	addi r4, r29, 0x16c
/* 80752E20  38 84 00 18 */	addi r4, r4, 0x18
/* 80752E24  48 00 47 6D */	bl set__4cXyzFRC3Vec
/* 80752E28  38 7E 08 38 */	addi r3, r30, 0x838
/* 80752E2C  38 9D 03 20 */	addi r4, r29, 0x320
/* 80752E30  38 84 00 18 */	addi r4, r4, 0x18
/* 80752E34  48 00 47 5D */	bl set__4cXyzFRC3Vec
/* 80752E38  38 61 02 00 */	addi r3, r1, 0x200
/* 80752E3C  38 9E 08 44 */	addi r4, r30, 0x844
/* 80752E40  48 00 48 31 */	bl __ct__4cXyzFRC4cXyz
/* 80752E44  38 61 01 F4 */	addi r3, r1, 0x1f4
/* 80752E48  38 9E 08 38 */	addi r4, r30, 0x838
/* 80752E4C  48 00 48 25 */	bl __ct__4cXyzFRC4cXyz
/* 80752E50  38 7C 02 48 */	addi r3, r28, 0x248
/* 80752E54  38 81 02 00 */	addi r4, r1, 0x200
/* 80752E58  38 A1 01 F4 */	addi r5, r1, 0x1f4
/* 80752E5C  4B A2 DC 4C */	b Set__9dCamera_cF4cXyz4cXyz
/* 80752E60  38 61 01 F4 */	addi r3, r1, 0x1f4
/* 80752E64  38 80 FF FF */	li r4, -1
/* 80752E68  48 00 44 65 */	bl __dt__4cXyzFv
/* 80752E6C  38 61 02 00 */	addi r3, r1, 0x200
/* 80752E70  38 80 FF FF */	li r4, -1
/* 80752E74  48 00 44 59 */	bl __dt__4cXyzFv
lbl_80752E78:
/* 80752E78  38 00 00 32 */	li r0, 0x32
/* 80752E7C  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 80752E80  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80752E84  38 9D 05 04 */	addi r4, r29, 0x504
/* 80752E88  38 84 00 0C */	addi r4, r4, 0xc
/* 80752E8C  48 00 47 05 */	bl set__4cXyzFRC3Vec
/* 80752E90  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 80752E94  4B B1 4A C0 */	b cM_rndF__Ff
/* 80752E98  FC 00 08 1E */	fctiwz f0, f1
/* 80752E9C  D8 01 05 B0 */	stfd f0, 0x5b0(r1)
/* 80752EA0  80 01 05 B4 */	lwz r0, 0x5b4(r1)
/* 80752EA4  B0 1E 07 E2 */	sth r0, 0x7e2(r30)
/* 80752EA8  38 7E 07 B8 */	addi r3, r30, 0x7b8
/* 80752EAC  88 9E 05 BC */	lbz r4, 0x5bc(r30)
/* 80752EB0  38 04 FF FB */	addi r0, r4, -5
/* 80752EB4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80752EB8  38 9D 05 04 */	addi r4, r29, 0x504
/* 80752EBC  7C 84 02 14 */	add r4, r4, r0
/* 80752EC0  48 00 46 D1 */	bl set__4cXyzFRC3Vec
/* 80752EC4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80752EC8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80752ECC  38 00 00 0C */	li r0, 0xc
/* 80752ED0  90 1E 05 B4 */	stw r0, 0x5b4(r30)
lbl_80752ED4:
/* 80752ED4  A8 1E 07 4E */	lha r0, 0x74e(r30)
/* 80752ED8  2C 00 00 00 */	cmpwi r0, 0
/* 80752EDC  41 82 00 58 */	beq lbl_80752F34
/* 80752EE0  38 61 05 54 */	addi r3, r1, 0x554
/* 80752EE4  88 9E 05 BC */	lbz r4, 0x5bc(r30)
/* 80752EE8  38 04 FF FB */	addi r0, r4, -5
/* 80752EEC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80752EF0  38 9D 05 04 */	addi r4, r29, 0x504
/* 80752EF4  7C 84 02 14 */	add r4, r4, r0
/* 80752EF8  48 00 46 99 */	bl set__4cXyzFRC3Vec
/* 80752EFC  3C 60 80 75 */	lis r3, mKAngInit_dt@ha
/* 80752F00  38 63 7C 1C */	addi r3, r3, mKAngInit_dt@l
/* 80752F04  88 1E 05 BC */	lbz r0, 0x5bc(r30)
/* 80752F08  54 00 08 3C */	slwi r0, r0, 1
/* 80752F0C  7C 63 02 14 */	add r3, r3, r0
/* 80752F10  A8 03 FF F2 */	lha r0, -0xe(r3)
/* 80752F14  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80752F18  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80752F1C  38 81 05 54 */	addi r4, r1, 0x554
/* 80752F20  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80752F24  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 80752F28  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80752F2C  4B B1 CB 8C */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80752F30  48 00 18 28 */	b lbl_80754758
lbl_80752F34:
/* 80752F34  A8 7D 00 8E */	lha r3, 0x8e(r29)
/* 80752F38  88 1E 05 BC */	lbz r0, 0x5bc(r30)
/* 80752F3C  7C 03 00 00 */	cmpw r3, r0
/* 80752F40  40 82 18 18 */	bne lbl_80754758
/* 80752F44  38 00 00 14 */	li r0, 0x14
/* 80752F48  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 80752F4C  7F C3 F3 78 */	mr r3, r30
/* 80752F50  38 80 00 07 */	li r4, 7
/* 80752F54  4B FF 96 99 */	bl mArg0Check__FP10e_po_classs
/* 80752F58  2C 03 00 00 */	cmpwi r3, 0
/* 80752F5C  40 82 00 10 */	bne lbl_80752F6C
/* 80752F60  38 00 00 0E */	li r0, 0xe
/* 80752F64  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 80752F68  48 00 17 F0 */	b lbl_80754758
lbl_80752F6C:
/* 80752F6C  38 00 00 32 */	li r0, 0x32
/* 80752F70  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 80752F74  38 00 00 0D */	li r0, 0xd
/* 80752F78  90 1E 05 B4 */	stw r0, 0x5b4(r30)
lbl_80752F7C:
/* 80752F7C  38 7E 08 44 */	addi r3, r30, 0x844
/* 80752F80  3B 5D 01 6C */	addi r26, r29, 0x16c
/* 80752F84  3B 5A 00 24 */	addi r26, r26, 0x24
/* 80752F88  7F 44 D3 78 */	mr r4, r26
/* 80752F8C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80752F90  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80752F94  C0 7F 00 94 */	lfs f3, 0x94(r31)
/* 80752F98  4B B1 CB 20 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80752F9C  38 7E 08 38 */	addi r3, r30, 0x838
/* 80752FA0  3B 7D 03 20 */	addi r27, r29, 0x320
/* 80752FA4  3B 7B 00 24 */	addi r27, r27, 0x24
/* 80752FA8  7F 64 DB 78 */	mr r4, r27
/* 80752FAC  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80752FB0  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80752FB4  C0 7F 00 94 */	lfs f3, 0x94(r31)
/* 80752FB8  4B B1 CB 00 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80752FBC  38 61 01 E8 */	addi r3, r1, 0x1e8
/* 80752FC0  38 9E 08 44 */	addi r4, r30, 0x844
/* 80752FC4  48 00 46 AD */	bl __ct__4cXyzFRC4cXyz
/* 80752FC8  38 61 01 DC */	addi r3, r1, 0x1dc
/* 80752FCC  38 9E 08 38 */	addi r4, r30, 0x838
/* 80752FD0  48 00 46 A1 */	bl __ct__4cXyzFRC4cXyz
/* 80752FD4  38 7C 02 48 */	addi r3, r28, 0x248
/* 80752FD8  38 81 01 E8 */	addi r4, r1, 0x1e8
/* 80752FDC  38 A1 01 DC */	addi r5, r1, 0x1dc
/* 80752FE0  4B A2 DA C8 */	b Set__9dCamera_cF4cXyz4cXyz
/* 80752FE4  38 61 01 DC */	addi r3, r1, 0x1dc
/* 80752FE8  38 80 FF FF */	li r4, -1
/* 80752FEC  48 00 42 E1 */	bl __dt__4cXyzFv
/* 80752FF0  38 61 01 E8 */	addi r3, r1, 0x1e8
/* 80752FF4  38 80 FF FF */	li r4, -1
/* 80752FF8  48 00 42 D5 */	bl __dt__4cXyzFv
/* 80752FFC  38 61 01 D0 */	addi r3, r1, 0x1d0
/* 80753000  7F 44 D3 78 */	mr r4, r26
/* 80753004  38 BE 08 44 */	addi r5, r30, 0x844
/* 80753008  4B B1 3B 2C */	b __mi__4cXyzCFRC3Vec
/* 8075300C  38 61 05 54 */	addi r3, r1, 0x554
/* 80753010  38 81 01 D0 */	addi r4, r1, 0x1d0
/* 80753014  48 00 45 F1 */	bl __as__4cXyzFRC4cXyz
/* 80753018  38 61 01 D0 */	addi r3, r1, 0x1d0
/* 8075301C  38 80 FF FF */	li r4, -1
/* 80753020  48 00 42 AD */	bl __dt__4cXyzFv
/* 80753024  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 80753028  7F 64 DB 78 */	mr r4, r27
/* 8075302C  38 BE 08 38 */	addi r5, r30, 0x838
/* 80753030  4B B1 3B 04 */	b __mi__4cXyzCFRC3Vec
/* 80753034  38 61 05 48 */	addi r3, r1, 0x548
/* 80753038  38 81 01 C4 */	addi r4, r1, 0x1c4
/* 8075303C  48 00 45 C9 */	bl __as__4cXyzFRC4cXyz
/* 80753040  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 80753044  38 80 FF FF */	li r4, -1
/* 80753048  48 00 42 85 */	bl __dt__4cXyzFv
/* 8075304C  38 61 05 54 */	addi r3, r1, 0x554
/* 80753050  48 00 44 11 */	bl abs__4cXyzCFv
/* 80753054  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80753058  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075305C  41 81 16 FC */	bgt lbl_80754758
/* 80753060  38 61 05 48 */	addi r3, r1, 0x548
/* 80753064  48 00 43 FD */	bl abs__4cXyzCFv
/* 80753068  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 8075306C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80753070  41 81 16 E8 */	bgt lbl_80754758
/* 80753074  38 00 00 00 */	li r0, 0
/* 80753078  B0 1E 07 E2 */	sth r0, 0x7e2(r30)
/* 8075307C  38 00 00 02 */	li r0, 2
/* 80753080  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 80753084  38 00 00 0E */	li r0, 0xe
/* 80753088  90 1E 05 B4 */	stw r0, 0x5b4(r30)
lbl_8075308C:
/* 8075308C  A8 1E 07 4E */	lha r0, 0x74e(r30)
/* 80753090  2C 00 00 00 */	cmpwi r0, 0
/* 80753094  40 82 16 C4 */	bne lbl_80754758
/* 80753098  7F C3 F3 78 */	mr r3, r30
/* 8075309C  38 80 00 0C */	li r4, 0xc
/* 807530A0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 807530A4  38 A0 00 00 */	li r5, 0
/* 807530A8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807530AC  4B FF 95 B5 */	bl anm_init__FP10e_po_classifUcf
/* 807530B0  38 00 00 0F */	li r0, 0xf
/* 807530B4  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 807530B8  48 00 16 A0 */	b lbl_80754758
lbl_807530BC:
/* 807530BC  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 807530C0  48 00 43 45 */	bl isStop__13mDoExt_morf_cFv
/* 807530C4  2C 03 00 00 */	cmpwi r3, 0
/* 807530C8  40 82 01 3C */	bne lbl_80753204
/* 807530CC  7F C3 F3 78 */	mr r3, r30
/* 807530D0  38 80 00 08 */	li r4, 8
/* 807530D4  4B FF 95 19 */	bl mArg0Check__FP10e_po_classs
/* 807530D8  2C 03 00 00 */	cmpwi r3, 0
/* 807530DC  41 82 00 2C */	beq lbl_80753108
/* 807530E0  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 807530E4  48 00 43 19 */	bl getFrame__13mDoExt_morf_cFv
/* 807530E8  FC 00 08 1E */	fctiwz f0, f1
/* 807530EC  D8 01 05 B0 */	stfd f0, 0x5b0(r1)
/* 807530F0  80 01 05 B4 */	lwz r0, 0x5b4(r1)
/* 807530F4  2C 00 00 0A */	cmpwi r0, 0xa
/* 807530F8  40 82 00 10 */	bne lbl_80753108
/* 807530FC  A8 7D 00 8E */	lha r3, 0x8e(r29)
/* 80753100  38 03 00 01 */	addi r0, r3, 1
/* 80753104  B0 1D 00 8E */	sth r0, 0x8e(r29)
lbl_80753108:
/* 80753108  7F C3 F3 78 */	mr r3, r30
/* 8075310C  38 80 00 09 */	li r4, 9
/* 80753110  4B FF 94 DD */	bl mArg0Check__FP10e_po_classs
/* 80753114  2C 03 00 00 */	cmpwi r3, 0
/* 80753118  41 82 00 2C */	beq lbl_80753144
/* 8075311C  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 80753120  48 00 42 DD */	bl getFrame__13mDoExt_morf_cFv
/* 80753124  FC 00 08 1E */	fctiwz f0, f1
/* 80753128  D8 01 05 B0 */	stfd f0, 0x5b0(r1)
/* 8075312C  80 01 05 B4 */	lwz r0, 0x5b4(r1)
/* 80753130  2C 00 00 01 */	cmpwi r0, 1
/* 80753134  40 82 00 10 */	bne lbl_80753144
/* 80753138  A8 7D 00 8E */	lha r3, 0x8e(r29)
/* 8075313C  38 03 00 01 */	addi r0, r3, 1
/* 80753140  B0 1D 00 8E */	sth r0, 0x8e(r29)
lbl_80753144:
/* 80753144  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 80753148  48 00 42 B5 */	bl getFrame__13mDoExt_morf_cFv
/* 8075314C  FC 00 08 1E */	fctiwz f0, f1
/* 80753150  D8 01 05 B0 */	stfd f0, 0x5b0(r1)
/* 80753154  80 01 05 B4 */	lwz r0, 0x5b4(r1)
/* 80753158  2C 00 00 28 */	cmpwi r0, 0x28
/* 8075315C  40 82 00 58 */	bne lbl_807531B4
/* 80753160  7F C3 F3 78 */	mr r3, r30
/* 80753164  88 9E 05 BC */	lbz r4, 0x5bc(r30)
/* 80753168  38 84 00 1B */	addi r4, r4, 0x1b
/* 8075316C  48 00 42 5D */	bl fopAcM_offSwitch__FPC10fopAc_ac_ci
/* 80753170  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80753174  83 43 13 68 */	lwz r26, mAudioMgrPtr__10Z2AudioMgr@l(r3)
/* 80753178  38 61 00 34 */	addi r3, r1, 0x34
/* 8075317C  3C 80 00 08 */	lis r4, 0x0008 /* 0x000801CE@ha */
/* 80753180  38 84 01 CE */	addi r4, r4, 0x01CE /* 0x000801CE@l */
/* 80753184  48 00 42 3D */	bl __ct__10JAISoundIDFUl
/* 80753188  7C 64 1B 78 */	mr r4, r3
/* 8075318C  7F 43 D3 78 */	mr r3, r26
/* 80753190  38 BE 07 94 */	addi r5, r30, 0x794
/* 80753194  38 C0 00 00 */	li r6, 0
/* 80753198  38 E0 00 00 */	li r7, 0
/* 8075319C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807531A0  FC 40 08 90 */	fmr f2, f1
/* 807531A4  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 807531A8  FC 80 18 90 */	fmr f4, f3
/* 807531AC  39 00 00 00 */	li r8, 0
/* 807531B0  4B B5 87 D4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_807531B4:
/* 807531B4  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 807531B8  48 00 42 45 */	bl getFrame__13mDoExt_morf_cFv
/* 807531BC  FC 00 08 1E */	fctiwz f0, f1
/* 807531C0  D8 01 05 B0 */	stfd f0, 0x5b0(r1)
/* 807531C4  80 01 05 B4 */	lwz r0, 0x5b4(r1)
/* 807531C8  2C 00 00 2B */	cmpwi r0, 0x2b
/* 807531CC  40 82 15 8C */	bne lbl_80754758
/* 807531D0  38 7D 00 4C */	addi r3, r29, 0x4c
/* 807531D4  A8 03 00 28 */	lha r0, 0x28(r3)
/* 807531D8  C8 3F 03 40 */	lfd f1, 0x340(r31)
/* 807531DC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807531E0  90 01 05 B4 */	stw r0, 0x5b4(r1)
/* 807531E4  3C 00 43 30 */	lis r0, 0x4330
/* 807531E8  90 01 05 B0 */	stw r0, 0x5b0(r1)
/* 807531EC  C8 01 05 B0 */	lfd f0, 0x5b0(r1)
/* 807531F0  EC 00 08 28 */	fsubs f0, f0, f1
/* 807531F4  D0 1E 08 00 */	stfs f0, 0x800(r30)
/* 807531F8  38 00 00 01 */	li r0, 1
/* 807531FC  98 1E 07 56 */	stb r0, 0x756(r30)
/* 80753200  48 00 15 58 */	b lbl_80754758
lbl_80753204:
/* 80753204  7F C3 F3 78 */	mr r3, r30
/* 80753208  38 80 00 07 */	li r4, 7
/* 8075320C  4B FF 93 E1 */	bl mArg0Check__FP10e_po_classs
/* 80753210  2C 03 00 00 */	cmpwi r3, 0
/* 80753214  41 82 00 64 */	beq lbl_80753278
/* 80753218  38 7E 08 44 */	addi r3, r30, 0x844
/* 8075321C  38 9D 01 6C */	addi r4, r29, 0x16c
/* 80753220  38 84 00 30 */	addi r4, r4, 0x30
/* 80753224  48 00 43 6D */	bl set__4cXyzFRC3Vec
/* 80753228  38 7E 08 38 */	addi r3, r30, 0x838
/* 8075322C  38 9D 03 20 */	addi r4, r29, 0x320
/* 80753230  38 84 00 30 */	addi r4, r4, 0x30
/* 80753234  48 00 43 5D */	bl set__4cXyzFRC3Vec
/* 80753238  38 61 01 B8 */	addi r3, r1, 0x1b8
/* 8075323C  38 9E 08 44 */	addi r4, r30, 0x844
/* 80753240  48 00 44 31 */	bl __ct__4cXyzFRC4cXyz
/* 80753244  38 61 01 AC */	addi r3, r1, 0x1ac
/* 80753248  38 9E 08 38 */	addi r4, r30, 0x838
/* 8075324C  48 00 44 25 */	bl __ct__4cXyzFRC4cXyz
/* 80753250  38 7C 02 48 */	addi r3, r28, 0x248
/* 80753254  38 81 01 B8 */	addi r4, r1, 0x1b8
/* 80753258  38 A1 01 AC */	addi r5, r1, 0x1ac
/* 8075325C  4B A2 D8 4C */	b Set__9dCamera_cF4cXyz4cXyz
/* 80753260  38 61 01 AC */	addi r3, r1, 0x1ac
/* 80753264  38 80 FF FF */	li r4, -1
/* 80753268  48 00 40 65 */	bl __dt__4cXyzFv
/* 8075326C  38 61 01 B8 */	addi r3, r1, 0x1b8
/* 80753270  38 80 FF FF */	li r4, -1
/* 80753274  48 00 40 59 */	bl __dt__4cXyzFv
lbl_80753278:
/* 80753278  7F C3 F3 78 */	mr r3, r30
/* 8075327C  38 80 00 07 */	li r4, 7
/* 80753280  4B FF 93 6D */	bl mArg0Check__FP10e_po_classs
/* 80753284  2C 03 00 00 */	cmpwi r3, 0
/* 80753288  40 82 00 18 */	bne lbl_807532A0
/* 8075328C  7F C3 F3 78 */	mr r3, r30
/* 80753290  38 80 00 0A */	li r4, 0xa
/* 80753294  4B FF 93 59 */	bl mArg0Check__FP10e_po_classs
/* 80753298  2C 03 00 00 */	cmpwi r3, 0
/* 8075329C  41 82 00 10 */	beq lbl_807532AC
lbl_807532A0:
/* 807532A0  A8 7D 00 8E */	lha r3, 0x8e(r29)
/* 807532A4  38 03 00 01 */	addi r0, r3, 1
/* 807532A8  B0 1D 00 8E */	sth r0, 0x8e(r29)
lbl_807532AC:
/* 807532AC  38 00 00 10 */	li r0, 0x10
/* 807532B0  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 807532B4  48 00 14 A4 */	b lbl_80754758
lbl_807532B8:
/* 807532B8  A8 1D 00 8E */	lha r0, 0x8e(r29)
/* 807532BC  2C 00 00 0B */	cmpwi r0, 0xb
/* 807532C0  41 80 14 98 */	blt lbl_80754758
/* 807532C4  7F C3 F3 78 */	mr r3, r30
/* 807532C8  38 80 00 07 */	li r4, 7
/* 807532CC  4B FF 93 21 */	bl mArg0Check__FP10e_po_classs
/* 807532D0  2C 03 00 00 */	cmpwi r3, 0
/* 807532D4  41 82 00 64 */	beq lbl_80753338
/* 807532D8  38 7E 08 44 */	addi r3, r30, 0x844
/* 807532DC  38 9D 01 6C */	addi r4, r29, 0x16c
/* 807532E0  38 84 00 3C */	addi r4, r4, 0x3c
/* 807532E4  48 00 42 AD */	bl set__4cXyzFRC3Vec
/* 807532E8  38 7E 08 38 */	addi r3, r30, 0x838
/* 807532EC  38 9D 03 20 */	addi r4, r29, 0x320
/* 807532F0  38 84 00 3C */	addi r4, r4, 0x3c
/* 807532F4  48 00 42 9D */	bl set__4cXyzFRC3Vec
/* 807532F8  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 807532FC  38 9E 08 44 */	addi r4, r30, 0x844
/* 80753300  48 00 43 71 */	bl __ct__4cXyzFRC4cXyz
/* 80753304  38 61 01 94 */	addi r3, r1, 0x194
/* 80753308  38 9E 08 38 */	addi r4, r30, 0x838
/* 8075330C  48 00 43 65 */	bl __ct__4cXyzFRC4cXyz
/* 80753310  38 7C 02 48 */	addi r3, r28, 0x248
/* 80753314  38 81 01 A0 */	addi r4, r1, 0x1a0
/* 80753318  38 A1 01 94 */	addi r5, r1, 0x194
/* 8075331C  4B A2 D7 8C */	b Set__9dCamera_cF4cXyz4cXyz
/* 80753320  38 61 01 94 */	addi r3, r1, 0x194
/* 80753324  38 80 FF FF */	li r4, -1
/* 80753328  48 00 3F A5 */	bl __dt__4cXyzFv
/* 8075332C  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 80753330  38 80 FF FF */	li r4, -1
/* 80753334  48 00 3F 99 */	bl __dt__4cXyzFv
lbl_80753338:
/* 80753338  38 61 05 54 */	addi r3, r1, 0x554
/* 8075333C  88 9E 05 BC */	lbz r4, 0x5bc(r30)
/* 80753340  38 04 FF FF */	addi r0, r4, -1
/* 80753344  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80753348  38 9D 05 04 */	addi r4, r29, 0x504
/* 8075334C  7C 84 02 14 */	add r4, r4, r0
/* 80753350  48 00 42 41 */	bl set__4cXyzFRC3Vec
/* 80753354  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80753358  38 81 05 54 */	addi r4, r1, 0x554
/* 8075335C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80753360  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 80753364  C0 7F 00 94 */	lfs f3, 0x94(r31)
/* 80753368  4B B1 C7 50 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8075336C  38 61 01 88 */	addi r3, r1, 0x188
/* 80753370  38 81 05 54 */	addi r4, r1, 0x554
/* 80753374  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80753378  4B B1 37 BC */	b __mi__4cXyzCFRC3Vec
/* 8075337C  38 61 05 48 */	addi r3, r1, 0x548
/* 80753380  38 81 01 88 */	addi r4, r1, 0x188
/* 80753384  48 00 42 81 */	bl __as__4cXyzFRC4cXyz
/* 80753388  38 61 01 88 */	addi r3, r1, 0x188
/* 8075338C  38 80 FF FF */	li r4, -1
/* 80753390  48 00 3F 3D */	bl __dt__4cXyzFv
/* 80753394  38 61 05 48 */	addi r3, r1, 0x548
/* 80753398  48 00 40 C9 */	bl abs__4cXyzCFv
/* 8075339C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807533A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807533A4  40 80 13 B4 */	bge lbl_80754758
/* 807533A8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807533AC  38 81 05 54 */	addi r4, r1, 0x554
/* 807533B0  48 00 41 E1 */	bl set__4cXyzFRC3Vec
/* 807533B4  38 7E 07 B8 */	addi r3, r30, 0x7b8
/* 807533B8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807533BC  48 00 41 D5 */	bl set__4cXyzFRC3Vec
/* 807533C0  38 00 00 1E */	li r0, 0x1e
/* 807533C4  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 807533C8  38 00 00 00 */	li r0, 0
/* 807533CC  B0 1E 07 E2 */	sth r0, 0x7e2(r30)
/* 807533D0  38 00 00 1F */	li r0, 0x1f
/* 807533D4  B0 1E 07 4C */	sth r0, 0x74c(r30)
/* 807533D8  A8 7D 00 8E */	lha r3, 0x8e(r29)
/* 807533DC  38 03 00 01 */	addi r0, r3, 1
/* 807533E0  B0 1D 00 8E */	sth r0, 0x8e(r29)
/* 807533E4  48 00 13 74 */	b lbl_80754758
lbl_807533E8:
/* 807533E8  A8 1D 00 8E */	lha r0, 0x8e(r29)
/* 807533EC  2C 00 00 0F */	cmpwi r0, 0xf
/* 807533F0  40 80 00 10 */	bge lbl_80753400
/* 807533F4  38 00 00 1E */	li r0, 0x1e
/* 807533F8  B0 1E 07 4C */	sth r0, 0x74c(r30)
/* 807533FC  48 00 13 5C */	b lbl_80754758
lbl_80753400:
/* 80753400  A8 1E 07 4C */	lha r0, 0x74c(r30)
/* 80753404  2C 00 00 00 */	cmpwi r0, 0
/* 80753408  41 82 00 10 */	beq lbl_80753418
/* 8075340C  38 00 00 32 */	li r0, 0x32
/* 80753410  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 80753414  48 00 13 44 */	b lbl_80754758
lbl_80753418:
/* 80753418  A8 1E 07 4E */	lha r0, 0x74e(r30)
/* 8075341C  2C 00 00 00 */	cmpwi r0, 0
/* 80753420  41 82 00 A0 */	beq lbl_807534C0
/* 80753424  7F C3 F3 78 */	mr r3, r30
/* 80753428  38 80 00 07 */	li r4, 7
/* 8075342C  4B FF 91 C1 */	bl mArg0Check__FP10e_po_classs
/* 80753430  2C 03 00 00 */	cmpwi r3, 0
/* 80753434  41 82 13 24 */	beq lbl_80754758
/* 80753438  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8075343C  83 43 13 68 */	lwz r26, mAudioMgrPtr__10Z2AudioMgr@l(r3)
/* 80753440  38 61 00 30 */	addi r3, r1, 0x30
/* 80753444  3C 80 00 08 */	lis r4, 0x0008 /* 0x000801C2@ha */
/* 80753448  38 84 01 C2 */	addi r4, r4, 0x01C2 /* 0x000801C2@l */
/* 8075344C  48 00 3F 75 */	bl __ct__10JAISoundIDFUl
/* 80753450  7C 64 1B 78 */	mr r4, r3
/* 80753454  7F 43 D3 78 */	mr r3, r26
/* 80753458  38 A0 00 00 */	li r5, 0
/* 8075345C  38 C0 00 00 */	li r6, 0
/* 80753460  38 E0 00 00 */	li r7, 0
/* 80753464  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80753468  FC 40 08 90 */	fmr f2, f1
/* 8075346C  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 80753470  FC 80 18 90 */	fmr f4, f3
/* 80753474  39 00 00 00 */	li r8, 0
/* 80753478  4B B5 90 94 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8075347C  A8 1E 07 4E */	lha r0, 0x74e(r30)
/* 80753480  2C 00 00 14 */	cmpwi r0, 0x14
/* 80753484  40 82 12 D4 */	bne lbl_80754758
/* 80753488  38 61 01 7C */	addi r3, r1, 0x17c
/* 8075348C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80753490  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80753494  FC 60 08 90 */	fmr f3, f1
/* 80753498  48 00 41 F5 */	bl __ct__4cXyzFfff
/* 8075349C  48 00 3F 15 */	bl dComIfGp_getVibration__Fv
/* 807534A0  38 80 00 02 */	li r4, 2
/* 807534A4  38 A0 00 1F */	li r5, 0x1f
/* 807534A8  38 C1 01 7C */	addi r6, r1, 0x17c
/* 807534AC  4B 91 C6 64 */	b StartQuake__12dVibration_cFii4cXyz
/* 807534B0  38 61 01 7C */	addi r3, r1, 0x17c
/* 807534B4  38 80 FF FF */	li r4, -1
/* 807534B8  48 00 3E 15 */	bl __dt__4cXyzFv
/* 807534BC  48 00 12 9C */	b lbl_80754758
lbl_807534C0:
/* 807534C0  7F C3 F3 78 */	mr r3, r30
/* 807534C4  38 80 00 07 */	li r4, 7
/* 807534C8  4B FF 91 25 */	bl mArg0Check__FP10e_po_classs
/* 807534CC  2C 03 00 00 */	cmpwi r3, 0
/* 807534D0  41 82 00 20 */	beq lbl_807534F0
/* 807534D4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807534D8  D0 1E 08 0C */	stfs f0, 0x80c(r30)
/* 807534DC  38 00 00 14 */	li r0, 0x14
/* 807534E0  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 807534E4  38 00 00 11 */	li r0, 0x11
/* 807534E8  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 807534EC  48 00 12 6C */	b lbl_80754758
lbl_807534F0:
/* 807534F0  38 00 00 50 */	li r0, 0x50
/* 807534F4  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 807534F8  38 00 00 15 */	li r0, 0x15
/* 807534FC  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 80753500  48 00 12 58 */	b lbl_80754758
lbl_80753504:
/* 80753504  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80753508  83 43 13 68 */	lwz r26, mAudioMgrPtr__10Z2AudioMgr@l(r3)
/* 8075350C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80753510  3C 80 00 08 */	lis r4, 0x0008 /* 0x000801C2@ha */
/* 80753514  38 84 01 C2 */	addi r4, r4, 0x01C2 /* 0x000801C2@l */
/* 80753518  48 00 3E A9 */	bl __ct__10JAISoundIDFUl
/* 8075351C  7C 64 1B 78 */	mr r4, r3
/* 80753520  7F 43 D3 78 */	mr r3, r26
/* 80753524  38 A0 00 00 */	li r5, 0
/* 80753528  38 C0 00 00 */	li r6, 0
/* 8075352C  38 E0 00 00 */	li r7, 0
/* 80753530  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80753534  FC 40 08 90 */	fmr f2, f1
/* 80753538  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 8075353C  FC 80 18 90 */	fmr f4, f3
/* 80753540  39 00 00 00 */	li r8, 0
/* 80753544  4B B5 8F C8 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80753548  A8 1E 07 4E */	lha r0, 0x74e(r30)
/* 8075354C  2C 00 00 00 */	cmpwi r0, 0
/* 80753550  40 82 12 08 */	bne lbl_80754758
/* 80753554  38 00 00 32 */	li r0, 0x32
/* 80753558  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 8075355C  38 00 00 12 */	li r0, 0x12
/* 80753560  90 1E 05 B4 */	stw r0, 0x5b4(r30)
lbl_80753564:
/* 80753564  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80753568  83 43 13 68 */	lwz r26, mAudioMgrPtr__10Z2AudioMgr@l(r3)
/* 8075356C  38 61 00 28 */	addi r3, r1, 0x28
/* 80753570  3C 80 00 08 */	lis r4, 0x0008 /* 0x000801C2@ha */
/* 80753574  38 84 01 C2 */	addi r4, r4, 0x01C2 /* 0x000801C2@l */
/* 80753578  48 00 3E 49 */	bl __ct__10JAISoundIDFUl
/* 8075357C  7C 64 1B 78 */	mr r4, r3
/* 80753580  7F 43 D3 78 */	mr r3, r26
/* 80753584  38 A0 00 00 */	li r5, 0
/* 80753588  38 C0 00 00 */	li r6, 0
/* 8075358C  38 E0 00 00 */	li r7, 0
/* 80753590  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80753594  FC 40 08 90 */	fmr f2, f1
/* 80753598  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 8075359C  FC 80 18 90 */	fmr f4, f3
/* 807535A0  39 00 00 00 */	li r8, 0
/* 807535A4  4B B5 8F 68 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 807535A8  A8 1E 07 4E */	lha r0, 0x74e(r30)
/* 807535AC  2C 00 00 00 */	cmpwi r0, 0
/* 807535B0  40 82 11 A8 */	bne lbl_80754758
/* 807535B4  38 00 00 00 */	li r0, 0
/* 807535B8  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 807535BC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807535C0  38 9E 07 B8 */	addi r4, r30, 0x7b8
/* 807535C4  48 00 3F CD */	bl set__4cXyzFRC3Vec
/* 807535C8  38 60 00 04 */	li r3, 4
/* 807535CC  4B A5 52 18 */	b dKy_change_colpat__FUc
/* 807535D0  38 7E 08 44 */	addi r3, r30, 0x844
/* 807535D4  38 9D 01 6C */	addi r4, r29, 0x16c
/* 807535D8  38 84 00 48 */	addi r4, r4, 0x48
/* 807535DC  48 00 3F B5 */	bl set__4cXyzFRC3Vec
/* 807535E0  38 7E 08 38 */	addi r3, r30, 0x838
/* 807535E4  38 9D 03 20 */	addi r4, r29, 0x320
/* 807535E8  38 84 00 48 */	addi r4, r4, 0x48
/* 807535EC  48 00 3F A5 */	bl set__4cXyzFRC3Vec
/* 807535F0  38 61 01 70 */	addi r3, r1, 0x170
/* 807535F4  38 9E 08 44 */	addi r4, r30, 0x844
/* 807535F8  48 00 40 79 */	bl __ct__4cXyzFRC4cXyz
/* 807535FC  38 61 01 64 */	addi r3, r1, 0x164
/* 80753600  38 9E 08 38 */	addi r4, r30, 0x838
/* 80753604  48 00 40 6D */	bl __ct__4cXyzFRC4cXyz
/* 80753608  38 7C 02 48 */	addi r3, r28, 0x248
/* 8075360C  38 81 01 70 */	addi r4, r1, 0x170
/* 80753610  38 A1 01 64 */	addi r5, r1, 0x164
/* 80753614  4B A2 D4 94 */	b Set__9dCamera_cF4cXyz4cXyz
/* 80753618  38 61 01 64 */	addi r3, r1, 0x164
/* 8075361C  38 80 FF FF */	li r4, -1
/* 80753620  48 00 3C AD */	bl __dt__4cXyzFv
/* 80753624  38 61 01 70 */	addi r3, r1, 0x170
/* 80753628  38 80 FF FF */	li r4, -1
/* 8075362C  48 00 3C A1 */	bl __dt__4cXyzFv
/* 80753630  38 00 00 32 */	li r0, 0x32
/* 80753634  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 80753638  38 00 00 13 */	li r0, 0x13
/* 8075363C  90 1E 05 B4 */	stw r0, 0x5b4(r30)
lbl_80753640:
/* 80753640  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80753644  83 43 13 68 */	lwz r26, mAudioMgrPtr__10Z2AudioMgr@l(r3)
/* 80753648  38 61 00 24 */	addi r3, r1, 0x24
/* 8075364C  3C 80 00 08 */	lis r4, 0x0008 /* 0x000801C2@ha */
/* 80753650  38 84 01 C2 */	addi r4, r4, 0x01C2 /* 0x000801C2@l */
/* 80753654  48 00 3D 6D */	bl __ct__10JAISoundIDFUl
/* 80753658  7C 64 1B 78 */	mr r4, r3
/* 8075365C  7F 43 D3 78 */	mr r3, r26
/* 80753660  38 A0 00 00 */	li r5, 0
/* 80753664  38 C0 00 00 */	li r6, 0
/* 80753668  38 E0 00 00 */	li r7, 0
/* 8075366C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80753670  FC 40 08 90 */	fmr f2, f1
/* 80753674  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 80753678  FC 80 18 90 */	fmr f4, f3
/* 8075367C  39 00 00 00 */	li r8, 0
/* 80753680  4B B5 8E 8C */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80753684  A8 1E 07 4E */	lha r0, 0x74e(r30)
/* 80753688  2C 00 00 00 */	cmpwi r0, 0
/* 8075368C  40 82 10 CC */	bne lbl_80754758
/* 80753690  7F C3 F3 78 */	mr r3, r30
/* 80753694  38 80 00 45 */	li r4, 0x45
/* 80753698  48 00 3C E5 */	bl fopAcM_onSwitch__FPC10fopAc_ac_ci
/* 8075369C  38 00 00 46 */	li r0, 0x46
/* 807536A0  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 807536A4  38 00 00 14 */	li r0, 0x14
/* 807536A8  90 1E 05 B4 */	stw r0, 0x5b4(r30)
lbl_807536AC:
/* 807536AC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807536B0  83 43 13 68 */	lwz r26, mAudioMgrPtr__10Z2AudioMgr@l(r3)
/* 807536B4  38 61 00 20 */	addi r3, r1, 0x20
/* 807536B8  3C 80 00 08 */	lis r4, 0x0008 /* 0x000801C2@ha */
/* 807536BC  38 84 01 C2 */	addi r4, r4, 0x01C2 /* 0x000801C2@l */
/* 807536C0  48 00 3D 01 */	bl __ct__10JAISoundIDFUl
/* 807536C4  7C 64 1B 78 */	mr r4, r3
/* 807536C8  7F 43 D3 78 */	mr r3, r26
/* 807536CC  38 A0 00 00 */	li r5, 0
/* 807536D0  38 C0 00 00 */	li r6, 0
/* 807536D4  38 E0 00 00 */	li r7, 0
/* 807536D8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807536DC  FC 40 08 90 */	fmr f2, f1
/* 807536E0  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 807536E4  FC 80 18 90 */	fmr f4, f3
/* 807536E8  39 00 00 00 */	li r8, 0
/* 807536EC  4B B5 8E 20 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 807536F0  A8 1E 07 4E */	lha r0, 0x74e(r30)
/* 807536F4  2C 00 00 00 */	cmpwi r0, 0
/* 807536F8  40 82 10 60 */	bne lbl_80754758
/* 807536FC  38 00 00 15 */	li r0, 0x15
/* 80753700  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 80753704  48 00 3C AD */	bl dComIfGp_getVibration__Fv
/* 80753708  38 80 00 1F */	li r4, 0x1f
/* 8075370C  4B 91 C6 88 */	b StopQuake__12dVibration_cFi
/* 80753710  38 00 00 14 */	li r0, 0x14
/* 80753714  B0 1D 00 8E */	sth r0, 0x8e(r29)
/* 80753718  7F C3 F3 78 */	mr r3, r30
/* 8075371C  38 80 00 16 */	li r4, 0x16
/* 80753720  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80753724  38 A0 00 02 */	li r5, 2
/* 80753728  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8075372C  4B FF 8F 35 */	bl anm_init__FP10e_po_classifUcf
/* 80753730  38 61 05 54 */	addi r3, r1, 0x554
/* 80753734  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80753738  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 8075373C  C0 7F 03 18 */	lfs f3, 0x318(r31)
/* 80753740  48 00 3E 6D */	bl set__4cXyzFfff
/* 80753744  48 00 3E A1 */	bl daPy_getPlayerActorClass__Fv
/* 80753748  38 81 05 54 */	addi r4, r1, 0x554
/* 8075374C  38 A0 80 00 */	li r5, -32768
/* 80753750  38 C0 00 00 */	li r6, 0
/* 80753754  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80753758  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8075375C  7D 89 03 A6 */	mtctr r12
/* 80753760  4E 80 04 21 */	bctrl 
/* 80753764  48 00 0F F4 */	b lbl_80754758
lbl_80753768:
/* 80753768  A8 7E 07 4E */	lha r3, 0x74e(r30)
/* 8075376C  7C 60 07 35 */	extsh. r0, r3
/* 80753770  41 82 00 28 */	beq lbl_80753798
/* 80753774  2C 03 00 01 */	cmpwi r3, 1
/* 80753778  40 82 0F E0 */	bne lbl_80754758
/* 8075377C  7F C3 F3 78 */	mr r3, r30
/* 80753780  38 80 00 16 */	li r4, 0x16
/* 80753784  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80753788  38 A0 00 02 */	li r5, 2
/* 8075378C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80753790  4B FF 8E D1 */	bl anm_init__FP10e_po_classifUcf
/* 80753794  48 00 0F C4 */	b lbl_80754758
lbl_80753798:
/* 80753798  38 00 00 00 */	li r0, 0
/* 8075379C  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 807537A0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807537A4  38 9E 07 B8 */	addi r4, r30, 0x7b8
/* 807537A8  48 00 3D E9 */	bl set__4cXyzFRC3Vec
/* 807537AC  A8 1D 00 8E */	lha r0, 0x8e(r29)
/* 807537B0  2C 00 00 14 */	cmpwi r0, 0x14
/* 807537B4  40 82 0F A4 */	bne lbl_80754758
/* 807537B8  38 00 00 1E */	li r0, 0x1e
/* 807537BC  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 807537C0  38 00 00 16 */	li r0, 0x16
/* 807537C4  90 1E 05 B4 */	stw r0, 0x5b4(r30)
lbl_807537C8:
/* 807537C8  7F C3 F3 78 */	mr r3, r30
/* 807537CC  38 80 00 07 */	li r4, 7
/* 807537D0  4B FF 8E 1D */	bl mArg0Check__FP10e_po_classs
/* 807537D4  2C 03 00 00 */	cmpwi r3, 0
/* 807537D8  41 82 00 7C */	beq lbl_80753854
/* 807537DC  38 7E 08 44 */	addi r3, r30, 0x844
/* 807537E0  38 9D 01 6C */	addi r4, r29, 0x16c
/* 807537E4  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 807537E8  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 807537EC  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 807537F0  38 84 00 6C */	addi r4, r4, 0x6c
/* 807537F4  4B B1 C2 C4 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 807537F8  38 7E 08 38 */	addi r3, r30, 0x838
/* 807537FC  38 9D 03 20 */	addi r4, r29, 0x320
/* 80753800  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80753804  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 80753808  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 8075380C  38 84 00 6C */	addi r4, r4, 0x6c
/* 80753810  4B B1 C2 A8 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80753814  38 61 01 58 */	addi r3, r1, 0x158
/* 80753818  38 9E 08 44 */	addi r4, r30, 0x844
/* 8075381C  48 00 3E 55 */	bl __ct__4cXyzFRC4cXyz
/* 80753820  38 61 01 4C */	addi r3, r1, 0x14c
/* 80753824  38 9E 08 38 */	addi r4, r30, 0x838
/* 80753828  48 00 3E 49 */	bl __ct__4cXyzFRC4cXyz
/* 8075382C  38 7C 02 48 */	addi r3, r28, 0x248
/* 80753830  38 81 01 58 */	addi r4, r1, 0x158
/* 80753834  38 A1 01 4C */	addi r5, r1, 0x14c
/* 80753838  4B A2 D2 70 */	b Set__9dCamera_cF4cXyz4cXyz
/* 8075383C  38 61 01 4C */	addi r3, r1, 0x14c
/* 80753840  38 80 FF FF */	li r4, -1
/* 80753844  48 00 3A 89 */	bl __dt__4cXyzFv
/* 80753848  38 61 01 58 */	addi r3, r1, 0x158
/* 8075384C  38 80 FF FF */	li r4, -1
/* 80753850  48 00 3A 7D */	bl __dt__4cXyzFv
lbl_80753854:
/* 80753854  38 61 01 40 */	addi r3, r1, 0x140
/* 80753858  38 9E 08 38 */	addi r4, r30, 0x838
/* 8075385C  38 BD 03 20 */	addi r5, r29, 0x320
/* 80753860  38 A5 00 6C */	addi r5, r5, 0x6c
/* 80753864  4B B1 32 D0 */	b __mi__4cXyzCFRC3Vec
/* 80753868  38 61 05 54 */	addi r3, r1, 0x554
/* 8075386C  38 81 01 40 */	addi r4, r1, 0x140
/* 80753870  48 00 3D 95 */	bl __as__4cXyzFRC4cXyz
/* 80753874  38 61 01 40 */	addi r3, r1, 0x140
/* 80753878  38 80 FF FF */	li r4, -1
/* 8075387C  48 00 3A 51 */	bl __dt__4cXyzFv
/* 80753880  38 61 05 54 */	addi r3, r1, 0x554
/* 80753884  48 00 3B DD */	bl abs__4cXyzCFv
/* 80753888  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8075388C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80753890  40 80 00 30 */	bge lbl_807538C0
/* 80753894  7F C3 F3 78 */	mr r3, r30
/* 80753898  38 80 00 07 */	li r4, 7
/* 8075389C  4B FF 8D 51 */	bl mArg0Check__FP10e_po_classs
/* 807538A0  2C 03 00 00 */	cmpwi r3, 0
/* 807538A4  41 82 00 1C */	beq lbl_807538C0
/* 807538A8  48 00 3D 3D */	bl daPy_getPlayerActorClass__Fv
/* 807538AC  38 80 00 17 */	li r4, 0x17
/* 807538B0  38 A0 00 02 */	li r5, 2
/* 807538B4  38 C0 00 02 */	li r6, 2
/* 807538B8  38 E0 00 00 */	li r7, 0
/* 807538BC  48 00 3D 01 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_807538C0:
/* 807538C0  A8 1E 07 4E */	lha r0, 0x74e(r30)
/* 807538C4  2C 00 00 00 */	cmpwi r0, 0
/* 807538C8  40 82 0E 90 */	bne lbl_80754758
/* 807538CC  88 7E 05 BC */	lbz r3, 0x5bc(r30)
/* 807538D0  38 03 FF F9 */	addi r0, r3, -7
/* 807538D4  54 00 70 22 */	slwi r0, r0, 0xe
/* 807538D8  B0 1E 07 DE */	sth r0, 0x7de(r30)
/* 807538DC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807538E0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807538E4  80 63 00 00 */	lwz r3, 0(r3)
/* 807538E8  A8 9E 07 DE */	lha r4, 0x7de(r30)
/* 807538EC  4B 8B 8A F0 */	b mDoMtx_YrotS__FPA4_fs
/* 807538F0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807538F4  D0 01 05 54 */	stfs f0, 0x554(r1)
/* 807538F8  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 807538FC  D0 01 05 58 */	stfs f0, 0x558(r1)
/* 80753900  C0 1F 02 B0 */	lfs f0, 0x2b0(r31)
/* 80753904  D0 01 05 5C */	stfs f0, 0x55c(r1)
/* 80753908  38 61 05 54 */	addi r3, r1, 0x554
/* 8075390C  38 81 05 48 */	addi r4, r1, 0x548
/* 80753910  4B B1 D5 DC */	b MtxPosition__FP4cXyzP4cXyz
/* 80753914  38 61 05 48 */	addi r3, r1, 0x548
/* 80753918  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 8075391C  48 00 3A 2D */	bl __apl__4cXyzFRC3Vec
/* 80753920  38 61 01 34 */	addi r3, r1, 0x134
/* 80753924  38 81 05 48 */	addi r4, r1, 0x548
/* 80753928  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8075392C  4B B1 32 08 */	b __mi__4cXyzCFRC3Vec
/* 80753930  38 61 05 54 */	addi r3, r1, 0x554
/* 80753934  38 81 01 34 */	addi r4, r1, 0x134
/* 80753938  48 00 3C CD */	bl __as__4cXyzFRC4cXyz
/* 8075393C  38 61 01 34 */	addi r3, r1, 0x134
/* 80753940  38 80 FF FF */	li r4, -1
/* 80753944  48 00 39 89 */	bl __dt__4cXyzFv
/* 80753948  38 61 05 54 */	addi r3, r1, 0x554
/* 8075394C  48 00 3B 15 */	bl abs__4cXyzCFv
/* 80753950  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80753954  EC 41 00 24 */	fdivs f2, f1, f0
/* 80753958  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8075395C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80753960  40 80 00 08 */	bge lbl_80753968
/* 80753964  FC 40 00 90 */	fmr f2, f0
lbl_80753968:
/* 80753968  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8075396C  38 81 05 48 */	addi r4, r1, 0x548
/* 80753970  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80753974  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80753978  4B B1 C1 40 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8075397C  38 61 01 28 */	addi r3, r1, 0x128
/* 80753980  38 81 05 48 */	addi r4, r1, 0x548
/* 80753984  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80753988  4B B1 31 AC */	b __mi__4cXyzCFRC3Vec
/* 8075398C  38 61 05 54 */	addi r3, r1, 0x554
/* 80753990  38 81 01 28 */	addi r4, r1, 0x128
/* 80753994  48 00 3C 71 */	bl __as__4cXyzFRC4cXyz
/* 80753998  38 61 01 28 */	addi r3, r1, 0x128
/* 8075399C  38 80 FF FF */	li r4, -1
/* 807539A0  48 00 39 2D */	bl __dt__4cXyzFv
/* 807539A4  7F C3 F3 78 */	mr r3, r30
/* 807539A8  48 00 3C 79 */	bl fopAcM_searchPlayerAngleY__FPC10fopAc_ac_c
/* 807539AC  7C 64 1B 78 */	mr r4, r3
/* 807539B0  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807539B4  38 A0 00 01 */	li r5, 1
/* 807539B8  38 C0 05 00 */	li r6, 0x500
/* 807539BC  4B B1 CC 4C */	b cLib_addCalcAngleS2__FPssss
/* 807539C0  38 61 05 54 */	addi r3, r1, 0x554
/* 807539C4  48 00 3A 9D */	bl abs__4cXyzCFv
/* 807539C8  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 807539CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807539D0  41 81 0D 88 */	bgt lbl_80754758
/* 807539D4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807539D8  38 81 05 48 */	addi r4, r1, 0x548
/* 807539DC  48 00 3B B5 */	bl set__4cXyzFRC3Vec
/* 807539E0  38 7E 07 B8 */	addi r3, r30, 0x7b8
/* 807539E4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807539E8  48 00 3B A9 */	bl set__4cXyzFRC3Vec
/* 807539EC  38 00 00 0A */	li r0, 0xa
/* 807539F0  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 807539F4  A8 7D 00 8E */	lha r3, 0x8e(r29)
/* 807539F8  38 03 00 01 */	addi r0, r3, 1
/* 807539FC  B0 1D 00 8E */	sth r0, 0x8e(r29)
/* 80753A00  38 00 00 00 */	li r0, 0
/* 80753A04  B0 1E 07 E2 */	sth r0, 0x7e2(r30)
/* 80753A08  38 00 00 17 */	li r0, 0x17
/* 80753A0C  90 1E 05 B4 */	stw r0, 0x5b4(r30)
lbl_80753A10:
/* 80753A10  A8 1D 00 8E */	lha r0, 0x8e(r29)
/* 80753A14  2C 00 00 18 */	cmpwi r0, 0x18
/* 80753A18  40 80 00 10 */	bge lbl_80753A28
/* 80753A1C  38 00 00 0A */	li r0, 0xa
/* 80753A20  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 80753A24  48 00 0D 34 */	b lbl_80754758
lbl_80753A28:
/* 80753A28  A8 1E 07 4E */	lha r0, 0x74e(r30)
/* 80753A2C  2C 00 00 00 */	cmpwi r0, 0
/* 80753A30  40 82 0D 28 */	bne lbl_80754758
/* 80753A34  7F C3 F3 78 */	mr r3, r30
/* 80753A38  38 80 00 07 */	li r4, 7
/* 80753A3C  4B FF 8B B1 */	bl mArg0Check__FP10e_po_classs
/* 80753A40  2C 03 00 00 */	cmpwi r3, 0
/* 80753A44  41 82 00 0C */	beq lbl_80753A50
/* 80753A48  38 60 00 01 */	li r3, 1
/* 80753A4C  4B A5 4D 98 */	b dKy_change_colpat__FUc
lbl_80753A50:
/* 80753A50  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80753A54  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80753A58  80 63 00 00 */	lwz r3, 0(r3)
/* 80753A5C  A8 9E 07 DE */	lha r4, 0x7de(r30)
/* 80753A60  4B 8B 89 7C */	b mDoMtx_YrotS__FPA4_fs
/* 80753A64  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80753A68  D0 01 05 54 */	stfs f0, 0x554(r1)
/* 80753A6C  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80753A70  D0 01 05 58 */	stfs f0, 0x558(r1)
/* 80753A74  C0 1F 02 B0 */	lfs f0, 0x2b0(r31)
/* 80753A78  D0 01 05 5C */	stfs f0, 0x55c(r1)
/* 80753A7C  38 61 05 54 */	addi r3, r1, 0x554
/* 80753A80  38 81 05 48 */	addi r4, r1, 0x548
/* 80753A84  4B B1 D4 68 */	b MtxPosition__FP4cXyzP4cXyz
/* 80753A88  38 61 01 1C */	addi r3, r1, 0x11c
/* 80753A8C  38 81 05 48 */	addi r4, r1, 0x548
/* 80753A90  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80753A94  4B B1 30 50 */	b __pl__4cXyzCFRC3Vec
/* 80753A98  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80753A9C  38 81 01 1C */	addi r4, r1, 0x11c
/* 80753AA0  48 00 3B 65 */	bl __as__4cXyzFRC4cXyz
/* 80753AA4  38 61 01 1C */	addi r3, r1, 0x11c
/* 80753AA8  38 80 FF FF */	li r4, -1
/* 80753AAC  48 00 38 21 */	bl __dt__4cXyzFv
/* 80753AB0  38 61 01 10 */	addi r3, r1, 0x110
/* 80753AB4  38 9E 08 2C */	addi r4, r30, 0x82c
/* 80753AB8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80753ABC  4B B1 30 78 */	b __mi__4cXyzCFRC3Vec
/* 80753AC0  38 61 05 48 */	addi r3, r1, 0x548
/* 80753AC4  38 81 01 10 */	addi r4, r1, 0x110
/* 80753AC8  48 00 3B 3D */	bl __as__4cXyzFRC4cXyz
/* 80753ACC  38 61 01 10 */	addi r3, r1, 0x110
/* 80753AD0  38 80 FF FF */	li r4, -1
/* 80753AD4  48 00 37 F9 */	bl __dt__4cXyzFv
/* 80753AD8  38 61 05 48 */	addi r3, r1, 0x548
/* 80753ADC  4B B1 36 4C */	b atan2sX_Z__4cXyzCFv
/* 80753AE0  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 80753AE4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80753AE8  38 9E 08 2C */	addi r4, r30, 0x82c
/* 80753AEC  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80753AF0  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 80753AF4  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 80753AF8  4B B1 BF C0 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80753AFC  7F C3 F3 78 */	mr r3, r30
/* 80753B00  48 00 3B 21 */	bl fopAcM_searchPlayerAngleY__FPC10fopAc_ac_c
/* 80753B04  B0 7E 04 E6 */	sth r3, 0x4e6(r30)
/* 80753B08  38 61 05 48 */	addi r3, r1, 0x548
/* 80753B0C  48 00 39 55 */	bl abs__4cXyzCFv
/* 80753B10  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80753B14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80753B18  40 80 00 50 */	bge lbl_80753B68
/* 80753B1C  A8 7E 07 DE */	lha r3, 0x7de(r30)
/* 80753B20  38 03 10 00 */	addi r0, r3, 0x1000
/* 80753B24  B0 1E 07 DE */	sth r0, 0x7de(r30)
/* 80753B28  7F C3 F3 78 */	mr r3, r30
/* 80753B2C  38 80 00 07 */	li r4, 7
/* 80753B30  4B FF 8A BD */	bl mArg0Check__FP10e_po_classs
/* 80753B34  2C 03 00 00 */	cmpwi r3, 0
/* 80753B38  41 82 00 30 */	beq lbl_80753B68
/* 80753B3C  A8 1E 07 DE */	lha r0, 0x7de(r30)
/* 80753B40  2C 00 90 00 */	cmpwi r0, -28672
/* 80753B44  40 82 00 24 */	bne lbl_80753B68
/* 80753B48  A8 7E 07 E2 */	lha r3, 0x7e2(r30)
/* 80753B4C  38 03 00 01 */	addi r0, r3, 1
/* 80753B50  B0 1E 07 E2 */	sth r0, 0x7e2(r30)
/* 80753B54  A8 1E 07 E2 */	lha r0, 0x7e2(r30)
/* 80753B58  2C 00 00 01 */	cmpwi r0, 1
/* 80753B5C  40 81 00 0C */	ble lbl_80753B68
/* 80753B60  38 00 00 64 */	li r0, 0x64
/* 80753B64  B0 1D 00 8E */	sth r0, 0x8e(r29)
lbl_80753B68:
/* 80753B68  A8 1D 00 8E */	lha r0, 0x8e(r29)
/* 80753B6C  2C 00 00 64 */	cmpwi r0, 0x64
/* 80753B70  40 82 0B E8 */	bne lbl_80754758
/* 80753B74  38 00 00 00 */	li r0, 0
/* 80753B78  B0 1E 07 DE */	sth r0, 0x7de(r30)
/* 80753B7C  B0 1E 07 E2 */	sth r0, 0x7e2(r30)
/* 80753B80  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80753B84  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 80753B88  38 00 00 32 */	li r0, 0x32
/* 80753B8C  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 80753B90  38 00 00 18 */	li r0, 0x18
/* 80753B94  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 80753B98  48 00 0B C0 */	b lbl_80754758
lbl_80753B9C:
/* 80753B9C  7F C3 F3 78 */	mr r3, r30
/* 80753BA0  38 80 00 07 */	li r4, 7
/* 80753BA4  4B FF 8A 49 */	bl mArg0Check__FP10e_po_classs
/* 80753BA8  2C 03 00 00 */	cmpwi r3, 0
/* 80753BAC  41 82 00 A8 */	beq lbl_80753C54
/* 80753BB0  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80753BB4  D0 01 05 54 */	stfs f0, 0x554(r1)
/* 80753BB8  C0 1F 01 DC */	lfs f0, 0x1dc(r31)
/* 80753BBC  D0 01 05 58 */	stfs f0, 0x558(r1)
/* 80753BC0  C0 1F 03 1C */	lfs f0, 0x31c(r31)
/* 80753BC4  D0 01 05 5C */	stfs f0, 0x55c(r1)
/* 80753BC8  38 7E 08 44 */	addi r3, r30, 0x844
/* 80753BCC  38 81 05 54 */	addi r4, r1, 0x554
/* 80753BD0  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80753BD4  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 80753BD8  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80753BDC  4B B1 BE DC */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80753BE0  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80753BE4  D0 01 05 54 */	stfs f0, 0x554(r1)
/* 80753BE8  C0 1F 03 20 */	lfs f0, 0x320(r31)
/* 80753BEC  D0 01 05 58 */	stfs f0, 0x558(r1)
/* 80753BF0  C0 1F 03 24 */	lfs f0, 0x324(r31)
/* 80753BF4  D0 01 05 5C */	stfs f0, 0x55c(r1)
/* 80753BF8  38 7E 08 38 */	addi r3, r30, 0x838
/* 80753BFC  38 81 05 54 */	addi r4, r1, 0x554
/* 80753C00  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80753C04  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 80753C08  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80753C0C  4B B1 BE AC */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80753C10  38 61 01 04 */	addi r3, r1, 0x104
/* 80753C14  38 9E 08 44 */	addi r4, r30, 0x844
/* 80753C18  48 00 3A 59 */	bl __ct__4cXyzFRC4cXyz
/* 80753C1C  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80753C20  38 9E 08 38 */	addi r4, r30, 0x838
/* 80753C24  48 00 3A 4D */	bl __ct__4cXyzFRC4cXyz
/* 80753C28  38 7C 02 48 */	addi r3, r28, 0x248
/* 80753C2C  38 81 01 04 */	addi r4, r1, 0x104
/* 80753C30  38 A1 00 F8 */	addi r5, r1, 0xf8
/* 80753C34  4B A2 CE 74 */	b Set__9dCamera_cF4cXyz4cXyz
/* 80753C38  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80753C3C  38 80 FF FF */	li r4, -1
/* 80753C40  48 00 36 8D */	bl __dt__4cXyzFv
/* 80753C44  38 61 01 04 */	addi r3, r1, 0x104
/* 80753C48  38 80 FF FF */	li r4, -1
/* 80753C4C  48 00 36 81 */	bl __dt__4cXyzFv
/* 80753C50  48 00 00 20 */	b lbl_80753C70
lbl_80753C54:
/* 80753C54  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80753C58  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80753C5C  7F C3 F3 78 */	mr r3, r30
/* 80753C60  48 00 39 C1 */	bl fopAcM_searchPlayerAngleY__FPC10fopAc_ac_c
/* 80753C64  3C 63 00 01 */	addis r3, r3, 1
/* 80753C68  38 03 80 00 */	addi r0, r3, -32768
/* 80753C6C  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_80753C70:
/* 80753C70  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80753C74  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80753C78  38 A0 00 01 */	li r5, 1
/* 80753C7C  38 C0 10 00 */	li r6, 0x1000
/* 80753C80  4B B1 C9 88 */	b cLib_addCalcAngleS2__FPssss
/* 80753C84  A8 1E 07 4E */	lha r0, 0x74e(r30)
/* 80753C88  2C 00 00 00 */	cmpwi r0, 0
/* 80753C8C  40 82 0A CC */	bne lbl_80754758
/* 80753C90  7F C3 F3 78 */	mr r3, r30
/* 80753C94  38 80 00 08 */	li r4, 8
/* 80753C98  4B FF 89 55 */	bl mArg0Check__FP10e_po_classs
/* 80753C9C  2C 03 00 00 */	cmpwi r3, 0
/* 80753CA0  40 82 00 2C */	bne lbl_80753CCC
/* 80753CA4  7F C3 F3 78 */	mr r3, r30
/* 80753CA8  38 80 00 09 */	li r4, 9
/* 80753CAC  4B FF 89 41 */	bl mArg0Check__FP10e_po_classs
/* 80753CB0  2C 03 00 00 */	cmpwi r3, 0
/* 80753CB4  40 82 00 18 */	bne lbl_80753CCC
/* 80753CB8  7F C3 F3 78 */	mr r3, r30
/* 80753CBC  38 80 00 0A */	li r4, 0xa
/* 80753CC0  4B FF 89 2D */	bl mArg0Check__FP10e_po_classs
/* 80753CC4  2C 03 00 00 */	cmpwi r3, 0
/* 80753CC8  41 82 00 3C */	beq lbl_80753D04
lbl_80753CCC:
/* 80753CCC  38 00 00 01 */	li r0, 1
/* 80753CD0  98 1E 07 58 */	stb r0, 0x758(r30)
/* 80753CD4  7F C3 F3 78 */	mr r3, r30
/* 80753CD8  4B 8C 5F A4 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80753CDC  38 61 05 48 */	addi r3, r1, 0x548
/* 80753CE0  38 80 FF FF */	li r4, -1
/* 80753CE4  48 00 35 E9 */	bl __dt__4cXyzFv
/* 80753CE8  38 61 05 54 */	addi r3, r1, 0x554
/* 80753CEC  38 80 FF FF */	li r4, -1
/* 80753CF0  48 00 35 DD */	bl __dt__4cXyzFv
/* 80753CF4  38 61 05 60 */	addi r3, r1, 0x560
/* 80753CF8  38 80 FF FF */	li r4, -1
/* 80753CFC  48 00 35 D1 */	bl __dt__4cXyzFv
/* 80753D00  48 00 0C A8 */	b lbl_807549A8
lbl_80753D04:
/* 80753D04  7F C3 F3 78 */	mr r3, r30
/* 80753D08  38 80 00 07 */	li r4, 7
/* 80753D0C  4B FF 88 E1 */	bl mArg0Check__FP10e_po_classs
/* 80753D10  2C 03 00 00 */	cmpwi r3, 0
/* 80753D14  41 82 0A 44 */	beq lbl_80754758
/* 80753D18  38 61 05 54 */	addi r3, r1, 0x554
/* 80753D1C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80753D20  C0 5F 03 28 */	lfs f2, 0x328(r31)
/* 80753D24  C0 7F 03 2C */	lfs f3, 0x32c(r31)
/* 80753D28  48 00 38 85 */	bl set__4cXyzFfff
/* 80753D2C  38 61 05 48 */	addi r3, r1, 0x548
/* 80753D30  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80753D34  C0 5F 03 30 */	lfs f2, 0x330(r31)
/* 80753D38  C0 7F 03 34 */	lfs f3, 0x334(r31)
/* 80753D3C  48 00 38 71 */	bl set__4cXyzFfff
/* 80753D40  38 00 00 01 */	li r0, 1
/* 80753D44  98 1E 07 59 */	stb r0, 0x759(r30)
/* 80753D48  38 61 00 EC */	addi r3, r1, 0xec
/* 80753D4C  38 81 05 54 */	addi r4, r1, 0x554
/* 80753D50  48 00 39 21 */	bl __ct__4cXyzFRC4cXyz
/* 80753D54  38 61 00 E0 */	addi r3, r1, 0xe0
/* 80753D58  38 81 05 48 */	addi r4, r1, 0x548
/* 80753D5C  48 00 39 15 */	bl __ct__4cXyzFRC4cXyz
/* 80753D60  38 7C 02 48 */	addi r3, r28, 0x248
/* 80753D64  38 81 00 EC */	addi r4, r1, 0xec
/* 80753D68  38 A1 00 E0 */	addi r5, r1, 0xe0
/* 80753D6C  4B A2 CE AC */	b Reset__9dCamera_cF4cXyz4cXyz
/* 80753D70  38 61 00 E0 */	addi r3, r1, 0xe0
/* 80753D74  38 80 FF FF */	li r4, -1
/* 80753D78  48 00 35 55 */	bl __dt__4cXyzFv
/* 80753D7C  38 61 00 EC */	addi r3, r1, 0xec
/* 80753D80  38 80 FF FF */	li r4, -1
/* 80753D84  48 00 35 49 */	bl __dt__4cXyzFv
/* 80753D88  38 7C 02 48 */	addi r3, r28, 0x248
/* 80753D8C  4B A0 D7 20 */	b Start__9dCamera_cFv
/* 80753D90  38 7C 02 48 */	addi r3, r28, 0x248
/* 80753D94  38 80 00 00 */	li r4, 0
/* 80753D98  4B A0 F2 74 */	b SetTrimSize__9dCamera_cFl
/* 80753D9C  48 00 35 81 */	bl dComIfGp_event_reset__Fv
/* 80753DA0  48 00 38 45 */	bl daPy_getPlayerActorClass__Fv
/* 80753DA4  48 00 35 65 */	bl cancelOriginalDemo__9daPy_py_cFv
/* 80753DA8  7F C3 F3 78 */	mr r3, r30
/* 80753DAC  38 80 00 43 */	li r4, 0x43
/* 80753DB0  48 00 35 CD */	bl fopAcM_onSwitch__FPC10fopAc_ac_ci
/* 80753DB4  38 60 00 00 */	li r3, 0
/* 80753DB8  98 7E 05 BC */	stb r3, 0x5bc(r30)
/* 80753DBC  38 00 00 1E */	li r0, 0x1e
/* 80753DC0  98 1E 05 BD */	stb r0, 0x5bd(r30)
/* 80753DC4  38 00 00 26 */	li r0, 0x26
/* 80753DC8  98 1E 05 BE */	stb r0, 0x5be(r30)
/* 80753DCC  38 00 00 FF */	li r0, 0xff
/* 80753DD0  98 1E 05 BF */	stb r0, 0x5bf(r30)
/* 80753DD4  98 7E 07 56 */	stb r3, 0x756(r30)
/* 80753DD8  98 7E 07 59 */	stb r3, 0x759(r30)
/* 80753DDC  38 00 00 5A */	li r0, 0x5a
/* 80753DE0  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 80753DE4  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 80753DE8  38 7E 0D 1C */	addi r3, r30, 0xd1c
/* 80753DEC  48 00 0C DD */	bl OnCoSetBit__14cCcD_ObjHitInfFv
/* 80753DF0  38 00 00 01 */	li r0, 1
/* 80753DF4  98 1E 05 C1 */	stb r0, 0x5c1(r30)
/* 80753DF8  3C 00 00 40 */	lis r0, 0x40
/* 80753DFC  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80753E00  38 00 00 03 */	li r0, 3
/* 80753E04  98 1E 05 46 */	stb r0, 0x546(r30)
/* 80753E08  7F C3 F3 78 */	mr r3, r30
/* 80753E0C  38 80 00 02 */	li r4, 2
/* 80753E10  48 00 0C B1 */	bl fopAcM_SetGroup__FP10fopAc_ac_cUc
/* 80753E14  38 7E 04 A8 */	addi r3, r30, 0x4a8
/* 80753E18  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80753E1C  48 00 37 75 */	bl set__4cXyzFRC3Vec
/* 80753E20  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 80753E24  4B B1 3B 30 */	b cM_rndF__Ff
/* 80753E28  FC 00 08 1E */	fctiwz f0, f1
/* 80753E2C  D8 01 05 B0 */	stfd f0, 0x5b0(r1)
/* 80753E30  80 01 05 B4 */	lwz r0, 0x5b4(r1)
/* 80753E34  B0 1E 07 40 */	sth r0, 0x740(r30)
/* 80753E38  38 00 00 00 */	li r0, 0
/* 80753E3C  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 80753E40  B0 1E 07 42 */	sth r0, 0x742(r30)
/* 80753E44  48 00 09 14 */	b lbl_80754758
lbl_80753E48:
/* 80753E48  A8 1E 07 4E */	lha r0, 0x74e(r30)
/* 80753E4C  2C 00 00 00 */	cmpwi r0, 0
/* 80753E50  40 82 09 08 */	bne lbl_80754758
/* 80753E54  A8 7E 07 DE */	lha r3, 0x7de(r30)
/* 80753E58  A8 1D 00 8E */	lha r0, 0x8e(r29)
/* 80753E5C  7C 03 00 00 */	cmpw r3, r0
/* 80753E60  40 82 08 F8 */	bne lbl_80754758
/* 80753E64  A8 7E 07 E2 */	lha r3, 0x7e2(r30)
/* 80753E68  7C 60 07 35 */	extsh. r0, r3
/* 80753E6C  40 82 00 18 */	bne lbl_80753E84
/* 80753E70  38 00 00 00 */	li r0, 0
/* 80753E74  B0 1D 00 8E */	sth r0, 0x8e(r29)
/* 80753E78  38 00 00 66 */	li r0, 0x66
/* 80753E7C  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 80753E80  48 00 08 D8 */	b lbl_80754758
lbl_80753E84:
/* 80753E84  3B 60 00 00 */	li r27, 0
/* 80753E88  3B 00 00 01 */	li r24, 1
/* 80753E8C  38 00 00 04 */	li r0, 4
/* 80753E90  7C 09 03 A6 */	mtctr r0
lbl_80753E94:
/* 80753E94  7C 60 C0 39 */	and. r0, r3, r24
/* 80753E98  41 82 00 A8 */	beq lbl_80753F40
/* 80753E9C  3B 20 FF 00 */	li r25, -256
/* 80753EA0  38 1B 00 0B */	addi r0, r27, 0xb
/* 80753EA4  7F 39 03 78 */	or r25, r25, r0
/* 80753EA8  38 7E 08 44 */	addi r3, r30, 0x844
/* 80753EAC  38 1B 00 0A */	addi r0, r27, 0xa
/* 80753EB0  1F 40 00 0C */	mulli r26, r0, 0xc
/* 80753EB4  38 9D 01 6C */	addi r4, r29, 0x16c
/* 80753EB8  7C 84 D2 14 */	add r4, r4, r26
/* 80753EBC  48 00 36 D5 */	bl set__4cXyzFRC3Vec
/* 80753EC0  38 7E 08 38 */	addi r3, r30, 0x838
/* 80753EC4  38 9D 03 20 */	addi r4, r29, 0x320
/* 80753EC8  7C 84 D2 14 */	add r4, r4, r26
/* 80753ECC  48 00 36 C5 */	bl set__4cXyzFRC3Vec
/* 80753ED0  A8 1E 07 E2 */	lha r0, 0x7e2(r30)
/* 80753ED4  7C 00 C2 78 */	xor r0, r0, r24
/* 80753ED8  B0 1E 07 E2 */	sth r0, 0x7e2(r30)
/* 80753EDC  A8 7E 07 DE */	lha r3, 0x7de(r30)
/* 80753EE0  38 03 00 01 */	addi r0, r3, 1
/* 80753EE4  B0 1E 07 DE */	sth r0, 0x7de(r30)
/* 80753EE8  7F C3 F3 78 */	mr r3, r30
/* 80753EEC  48 00 0B BD */	bl fopAcM_GetID__FPCv
/* 80753EF0  7C 64 1B 78 */	mr r4, r3
/* 80753EF4  38 00 00 00 */	li r0, 0
/* 80753EF8  90 01 00 08 */	stw r0, 8(r1)
/* 80753EFC  38 60 01 DA */	li r3, 0x1da
/* 80753F00  7F 25 CB 78 */	mr r5, r25
/* 80753F04  38 1B 00 0E */	addi r0, r27, 0xe
/* 80753F08  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80753F0C  38 DD 05 04 */	addi r6, r29, 0x504
/* 80753F10  7C C6 02 14 */	add r6, r6, r0
/* 80753F14  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80753F18  7C 07 07 74 */	extsb r7, r0
/* 80753F1C  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80753F20  39 20 00 00 */	li r9, 0
/* 80753F24  39 40 FF FF */	li r10, -1
/* 80753F28  4B 8C 5F C8 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80753F2C  2C 1B 00 00 */	cmpwi r27, 0
/* 80753F30  40 82 00 1C */	bne lbl_80753F4C
/* 80753F34  38 00 00 66 */	li r0, 0x66
/* 80753F38  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 80753F3C  48 00 00 10 */	b lbl_80753F4C
lbl_80753F40:
/* 80753F40  57 18 08 3C */	slwi r24, r24, 1
/* 80753F44  3B 7B 00 01 */	addi r27, r27, 1
/* 80753F48  42 00 FF 4C */	bdnz lbl_80753E94
lbl_80753F4C:
/* 80753F4C  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80753F50  38 9E 08 44 */	addi r4, r30, 0x844
/* 80753F54  48 00 37 1D */	bl __ct__4cXyzFRC4cXyz
/* 80753F58  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80753F5C  38 9E 08 38 */	addi r4, r30, 0x838
/* 80753F60  48 00 37 11 */	bl __ct__4cXyzFRC4cXyz
/* 80753F64  38 7C 02 48 */	addi r3, r28, 0x248
/* 80753F68  38 81 00 D4 */	addi r4, r1, 0xd4
/* 80753F6C  38 A1 00 C8 */	addi r5, r1, 0xc8
/* 80753F70  4B A2 CB 38 */	b Set__9dCamera_cF4cXyz4cXyz
/* 80753F74  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80753F78  38 80 FF FF */	li r4, -1
/* 80753F7C  48 00 33 51 */	bl __dt__4cXyzFv
/* 80753F80  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80753F84  38 80 FF FF */	li r4, -1
/* 80753F88  48 00 33 45 */	bl __dt__4cXyzFv
/* 80753F8C  38 00 00 46 */	li r0, 0x46
/* 80753F90  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 80753F94  48 00 07 C4 */	b lbl_80754758
lbl_80753F98:
/* 80753F98  A8 1E 07 4E */	lha r0, 0x74e(r30)
/* 80753F9C  2C 00 00 00 */	cmpwi r0, 0
/* 80753FA0  40 82 07 B8 */	bne lbl_80754758
/* 80753FA4  7F C3 F3 78 */	mr r3, r30
/* 80753FA8  38 80 00 1E */	li r4, 0x1e
/* 80753FAC  48 00 0A C9 */	bl fopAcM_isSwitch__FPC10fopAc_ac_ci
/* 80753FB0  2C 03 00 00 */	cmpwi r3, 0
/* 80753FB4  41 82 00 3C */	beq lbl_80753FF0
/* 80753FB8  7F C3 F3 78 */	mr r3, r30
/* 80753FBC  38 80 00 22 */	li r4, 0x22
/* 80753FC0  48 00 0A B5 */	bl fopAcM_isSwitch__FPC10fopAc_ac_ci
/* 80753FC4  2C 03 00 00 */	cmpwi r3, 0
/* 80753FC8  40 82 00 28 */	bne lbl_80753FF0
/* 80753FCC  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80753FD0  D0 1E 08 38 */	stfs f0, 0x838(r30)
/* 80753FD4  C0 1F 03 38 */	lfs f0, 0x338(r31)
/* 80753FD8  D0 1E 08 3C */	stfs f0, 0x83c(r30)
/* 80753FDC  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80753FE0  D0 1E 08 40 */	stfs f0, 0x840(r30)
/* 80753FE4  38 00 00 00 */	li r0, 0
/* 80753FE8  B0 1E 07 DE */	sth r0, 0x7de(r30)
/* 80753FEC  48 00 01 CC */	b lbl_807541B8
lbl_80753FF0:
/* 80753FF0  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80753FF4  C0 1E 08 38 */	lfs f0, 0x838(r30)
/* 80753FF8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80753FFC  40 82 00 8C */	bne lbl_80754088
/* 80754000  C0 3F 03 38 */	lfs f1, 0x338(r31)
/* 80754004  C0 1E 08 3C */	lfs f0, 0x83c(r30)
/* 80754008  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8075400C  40 82 00 7C */	bne lbl_80754088
/* 80754010  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80754014  C0 1E 08 40 */	lfs f0, 0x840(r30)
/* 80754018  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8075401C  40 82 00 6C */	bne lbl_80754088
/* 80754020  A8 7E 07 DE */	lha r3, 0x7de(r30)
/* 80754024  38 03 00 01 */	addi r0, r3, 1
/* 80754028  B0 1E 07 DE */	sth r0, 0x7de(r30)
/* 8075402C  A8 1E 07 DE */	lha r0, 0x7de(r30)
/* 80754030  2C 00 00 46 */	cmpwi r0, 0x46
/* 80754034  40 81 01 84 */	ble lbl_807541B8
/* 80754038  38 7C 02 48 */	addi r3, r28, 0x248
/* 8075403C  4B A0 D4 70 */	b Start__9dCamera_cFv
/* 80754040  38 7C 02 48 */	addi r3, r28, 0x248
/* 80754044  38 80 00 00 */	li r4, 0
/* 80754048  4B A0 EF C4 */	b SetTrimSize__9dCamera_cFl
/* 8075404C  48 00 32 D1 */	bl dComIfGp_event_reset__Fv
/* 80754050  48 00 35 95 */	bl daPy_getPlayerActorClass__Fv
/* 80754054  48 00 32 B5 */	bl cancelOriginalDemo__9daPy_py_cFv
/* 80754058  38 00 03 E8 */	li r0, 0x3e8
/* 8075405C  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 80754060  38 61 05 48 */	addi r3, r1, 0x548
/* 80754064  38 80 FF FF */	li r4, -1
/* 80754068  48 00 32 65 */	bl __dt__4cXyzFv
/* 8075406C  38 61 05 54 */	addi r3, r1, 0x554
/* 80754070  38 80 FF FF */	li r4, -1
/* 80754074  48 00 32 59 */	bl __dt__4cXyzFv
/* 80754078  38 61 05 60 */	addi r3, r1, 0x560
/* 8075407C  38 80 FF FF */	li r4, -1
/* 80754080  48 00 32 4D */	bl __dt__4cXyzFv
/* 80754084  48 00 09 24 */	b lbl_807549A8
lbl_80754088:
/* 80754088  A8 7E 07 DE */	lha r3, 0x7de(r30)
/* 8075408C  A8 1D 00 8E */	lha r0, 0x8e(r29)
/* 80754090  7C 03 00 00 */	cmpw r3, r0
/* 80754094  40 82 01 04 */	bne lbl_80754198
/* 80754098  7F C3 F3 78 */	mr r3, r30
/* 8075409C  38 80 00 23 */	li r4, 0x23
/* 807540A0  48 00 09 D5 */	bl fopAcM_isSwitch__FPC10fopAc_ac_ci
/* 807540A4  2C 03 00 00 */	cmpwi r3, 0
/* 807540A8  41 82 00 A0 */	beq lbl_80754148
/* 807540AC  7F C3 F3 78 */	mr r3, r30
/* 807540B0  38 80 00 24 */	li r4, 0x24
/* 807540B4  48 00 09 C1 */	bl fopAcM_isSwitch__FPC10fopAc_ac_ci
/* 807540B8  2C 03 00 00 */	cmpwi r3, 0
/* 807540BC  41 82 00 8C */	beq lbl_80754148
/* 807540C0  7F C3 F3 78 */	mr r3, r30
/* 807540C4  38 80 00 25 */	li r4, 0x25
/* 807540C8  48 00 09 AD */	bl fopAcM_isSwitch__FPC10fopAc_ac_ci
/* 807540CC  2C 03 00 00 */	cmpwi r3, 0
/* 807540D0  41 82 00 78 */	beq lbl_80754148
/* 807540D4  38 00 00 8C */	li r0, 0x8c
/* 807540D8  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 807540DC  38 00 00 67 */	li r0, 0x67
/* 807540E0  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 807540E4  38 7E 08 44 */	addi r3, r30, 0x844
/* 807540E8  38 9D 01 6C */	addi r4, r29, 0x16c
/* 807540EC  38 84 00 C0 */	addi r4, r4, 0xc0
/* 807540F0  48 00 34 A1 */	bl set__4cXyzFRC3Vec
/* 807540F4  38 7E 08 38 */	addi r3, r30, 0x838
/* 807540F8  38 9D 03 20 */	addi r4, r29, 0x320
/* 807540FC  38 84 00 C0 */	addi r4, r4, 0xc0
/* 80754100  48 00 34 91 */	bl set__4cXyzFRC3Vec
/* 80754104  38 61 00 BC */	addi r3, r1, 0xbc
/* 80754108  38 9E 08 44 */	addi r4, r30, 0x844
/* 8075410C  48 00 35 65 */	bl __ct__4cXyzFRC4cXyz
/* 80754110  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80754114  38 9E 08 38 */	addi r4, r30, 0x838
/* 80754118  48 00 35 59 */	bl __ct__4cXyzFRC4cXyz
/* 8075411C  38 7C 02 48 */	addi r3, r28, 0x248
/* 80754120  38 81 00 BC */	addi r4, r1, 0xbc
/* 80754124  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 80754128  4B A2 C9 80 */	b Set__9dCamera_cF4cXyz4cXyz
/* 8075412C  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80754130  38 80 FF FF */	li r4, -1
/* 80754134  48 00 31 99 */	bl __dt__4cXyzFv
/* 80754138  38 61 00 BC */	addi r3, r1, 0xbc
/* 8075413C  38 80 FF FF */	li r4, -1
/* 80754140  48 00 31 8D */	bl __dt__4cXyzFv
/* 80754144  48 00 00 2C */	b lbl_80754170
lbl_80754148:
/* 80754148  38 7C 02 48 */	addi r3, r28, 0x248
/* 8075414C  4B A0 D3 60 */	b Start__9dCamera_cFv
/* 80754150  38 7C 02 48 */	addi r3, r28, 0x248
/* 80754154  38 80 00 00 */	li r4, 0
/* 80754158  4B A0 EE B4 */	b SetTrimSize__9dCamera_cFl
/* 8075415C  48 00 31 C1 */	bl dComIfGp_event_reset__Fv
/* 80754160  48 00 34 85 */	bl daPy_getPlayerActorClass__Fv
/* 80754164  48 00 31 A5 */	bl cancelOriginalDemo__9daPy_py_cFv
/* 80754168  38 00 03 E8 */	li r0, 0x3e8
/* 8075416C  90 1E 05 B4 */	stw r0, 0x5b4(r30)
lbl_80754170:
/* 80754170  38 61 05 48 */	addi r3, r1, 0x548
/* 80754174  38 80 FF FF */	li r4, -1
/* 80754178  48 00 31 55 */	bl __dt__4cXyzFv
/* 8075417C  38 61 05 54 */	addi r3, r1, 0x554
/* 80754180  38 80 FF FF */	li r4, -1
/* 80754184  48 00 31 49 */	bl __dt__4cXyzFv
/* 80754188  38 61 05 60 */	addi r3, r1, 0x560
/* 8075418C  38 80 FF FF */	li r4, -1
/* 80754190  48 00 31 3D */	bl __dt__4cXyzFv
/* 80754194  48 00 08 14 */	b lbl_807549A8
lbl_80754198:
/* 80754198  38 7E 08 44 */	addi r3, r30, 0x844
/* 8075419C  38 9D 01 6C */	addi r4, r29, 0x16c
/* 807541A0  38 84 00 B4 */	addi r4, r4, 0xb4
/* 807541A4  48 00 33 ED */	bl set__4cXyzFRC3Vec
/* 807541A8  38 7E 08 38 */	addi r3, r30, 0x838
/* 807541AC  38 9D 03 20 */	addi r4, r29, 0x320
/* 807541B0  38 84 00 B4 */	addi r4, r4, 0xb4
/* 807541B4  48 00 33 DD */	bl set__4cXyzFRC3Vec
lbl_807541B8:
/* 807541B8  38 61 00 A4 */	addi r3, r1, 0xa4
/* 807541BC  38 9E 08 44 */	addi r4, r30, 0x844
/* 807541C0  48 00 34 B1 */	bl __ct__4cXyzFRC4cXyz
/* 807541C4  38 61 00 98 */	addi r3, r1, 0x98
/* 807541C8  38 9E 08 38 */	addi r4, r30, 0x838
/* 807541CC  48 00 34 A5 */	bl __ct__4cXyzFRC4cXyz
/* 807541D0  38 7C 02 48 */	addi r3, r28, 0x248
/* 807541D4  38 81 00 A4 */	addi r4, r1, 0xa4
/* 807541D8  38 A1 00 98 */	addi r5, r1, 0x98
/* 807541DC  4B A2 C8 CC */	b Set__9dCamera_cF4cXyz4cXyz
/* 807541E0  38 61 00 98 */	addi r3, r1, 0x98
/* 807541E4  38 80 FF FF */	li r4, -1
/* 807541E8  48 00 30 E5 */	bl __dt__4cXyzFv
/* 807541EC  38 61 00 A4 */	addi r3, r1, 0xa4
/* 807541F0  38 80 FF FF */	li r4, -1
/* 807541F4  48 00 30 D9 */	bl __dt__4cXyzFv
/* 807541F8  48 00 05 60 */	b lbl_80754758
lbl_807541FC:
/* 807541FC  38 7E 08 44 */	addi r3, r30, 0x844
/* 80754200  38 9D 01 6C */	addi r4, r29, 0x16c
/* 80754204  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80754208  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 8075420C  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 80754210  38 84 00 CC */	addi r4, r4, 0xcc
/* 80754214  4B B1 B8 A4 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80754218  38 7E 08 38 */	addi r3, r30, 0x838
/* 8075421C  38 9D 03 20 */	addi r4, r29, 0x320
/* 80754220  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80754224  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80754228  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 8075422C  38 84 00 CC */	addi r4, r4, 0xcc
/* 80754230  4B B1 B8 88 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80754234  38 61 00 8C */	addi r3, r1, 0x8c
/* 80754238  38 9E 08 44 */	addi r4, r30, 0x844
/* 8075423C  48 00 34 35 */	bl __ct__4cXyzFRC4cXyz
/* 80754240  38 61 00 80 */	addi r3, r1, 0x80
/* 80754244  38 9E 08 38 */	addi r4, r30, 0x838
/* 80754248  48 00 34 29 */	bl __ct__4cXyzFRC4cXyz
/* 8075424C  38 7C 02 48 */	addi r3, r28, 0x248
/* 80754250  38 81 00 8C */	addi r4, r1, 0x8c
/* 80754254  38 A1 00 80 */	addi r5, r1, 0x80
/* 80754258  4B A2 C8 50 */	b Set__9dCamera_cF4cXyz4cXyz
/* 8075425C  38 61 00 80 */	addi r3, r1, 0x80
/* 80754260  38 80 FF FF */	li r4, -1
/* 80754264  48 00 30 69 */	bl __dt__4cXyzFv
/* 80754268  38 61 00 8C */	addi r3, r1, 0x8c
/* 8075426C  38 80 FF FF */	li r4, -1
/* 80754270  48 00 30 5D */	bl __dt__4cXyzFv
/* 80754274  A8 1E 07 4E */	lha r0, 0x74e(r30)
/* 80754278  2C 00 00 00 */	cmpwi r0, 0
/* 8075427C  40 82 04 DC */	bne lbl_80754758
/* 80754280  38 61 00 74 */	addi r3, r1, 0x74
/* 80754284  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80754288  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8075428C  FC 60 08 90 */	fmr f3, f1
/* 80754290  48 00 33 FD */	bl __ct__4cXyzFfff
/* 80754294  48 00 31 1D */	bl dComIfGp_getVibration__Fv
/* 80754298  38 80 00 02 */	li r4, 2
/* 8075429C  38 A0 00 1F */	li r5, 0x1f
/* 807542A0  38 C1 00 74 */	addi r6, r1, 0x74
/* 807542A4  4B 91 B8 6C */	b StartQuake__12dVibration_cFii4cXyz
/* 807542A8  38 61 00 74 */	addi r3, r1, 0x74
/* 807542AC  38 80 FF FF */	li r4, -1
/* 807542B0  48 00 30 1D */	bl __dt__4cXyzFv
/* 807542B4  38 00 00 8C */	li r0, 0x8c
/* 807542B8  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 807542BC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807542C0  83 43 13 68 */	lwz r26, mAudioMgrPtr__10Z2AudioMgr@l(r3)
/* 807542C4  38 61 00 1C */	addi r3, r1, 0x1c
/* 807542C8  3C 80 00 08 */	lis r4, 0x0008 /* 0x000801C2@ha */
/* 807542CC  38 84 01 C2 */	addi r4, r4, 0x01C2 /* 0x000801C2@l */
/* 807542D0  48 00 30 F1 */	bl __ct__10JAISoundIDFUl
/* 807542D4  7C 64 1B 78 */	mr r4, r3
/* 807542D8  7F 43 D3 78 */	mr r3, r26
/* 807542DC  38 A0 00 00 */	li r5, 0
/* 807542E0  38 C0 00 00 */	li r6, 0
/* 807542E4  38 E0 00 00 */	li r7, 0
/* 807542E8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807542EC  FC 40 08 90 */	fmr f2, f1
/* 807542F0  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 807542F4  FC 80 18 90 */	fmr f4, f3
/* 807542F8  39 00 00 00 */	li r8, 0
/* 807542FC  4B B5 82 10 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80754300  7F C3 F3 78 */	mr r3, r30
/* 80754304  38 80 00 45 */	li r4, 0x45
/* 80754308  48 00 30 C1 */	bl fopAcM_offSwitch__FPC10fopAc_ac_ci
/* 8075430C  38 00 00 68 */	li r0, 0x68
/* 80754310  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 80754314  48 00 04 44 */	b lbl_80754758
lbl_80754318:
/* 80754318  A8 7E 07 4E */	lha r3, 0x74e(r30)
/* 8075431C  7C 60 07 35 */	extsh. r0, r3
/* 80754320  41 82 00 6C */	beq lbl_8075438C
/* 80754324  2C 03 00 14 */	cmpwi r3, 0x14
/* 80754328  40 81 00 48 */	ble lbl_80754370
/* 8075432C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80754330  83 43 13 68 */	lwz r26, mAudioMgrPtr__10Z2AudioMgr@l(r3)
/* 80754334  38 61 00 18 */	addi r3, r1, 0x18
/* 80754338  3C 80 00 08 */	lis r4, 0x0008 /* 0x000801C2@ha */
/* 8075433C  38 84 01 C2 */	addi r4, r4, 0x01C2 /* 0x000801C2@l */
/* 80754340  48 00 30 81 */	bl __ct__10JAISoundIDFUl
/* 80754344  7C 64 1B 78 */	mr r4, r3
/* 80754348  7F 43 D3 78 */	mr r3, r26
/* 8075434C  38 A0 00 00 */	li r5, 0
/* 80754350  38 C0 00 00 */	li r6, 0
/* 80754354  38 E0 00 00 */	li r7, 0
/* 80754358  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8075435C  FC 40 08 90 */	fmr f2, f1
/* 80754360  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 80754364  FC 80 18 90 */	fmr f4, f3
/* 80754368  39 00 00 00 */	li r8, 0
/* 8075436C  4B B5 81 A0 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80754370:
/* 80754370  A8 1E 07 4E */	lha r0, 0x74e(r30)
/* 80754374  2C 00 00 14 */	cmpwi r0, 0x14
/* 80754378  40 82 03 E0 */	bne lbl_80754758
/* 8075437C  48 00 30 35 */	bl dComIfGp_getVibration__Fv
/* 80754380  38 80 00 1F */	li r4, 0x1f
/* 80754384  4B 91 BA 10 */	b StopQuake__12dVibration_cFi
/* 80754388  48 00 03 D0 */	b lbl_80754758
lbl_8075438C:
/* 8075438C  38 7C 02 48 */	addi r3, r28, 0x248
/* 80754390  4B A0 D1 1C */	b Start__9dCamera_cFv
/* 80754394  38 7C 02 48 */	addi r3, r28, 0x248
/* 80754398  38 80 00 00 */	li r4, 0
/* 8075439C  4B A0 EC 70 */	b SetTrimSize__9dCamera_cFl
/* 807543A0  48 00 2F 7D */	bl dComIfGp_event_reset__Fv
/* 807543A4  48 00 32 41 */	bl daPy_getPlayerActorClass__Fv
/* 807543A8  48 00 2F 61 */	bl cancelOriginalDemo__9daPy_py_cFv
/* 807543AC  7F C3 F3 78 */	mr r3, r30
/* 807543B0  38 80 00 26 */	li r4, 0x26
/* 807543B4  48 00 2F C9 */	bl fopAcM_onSwitch__FPC10fopAc_ac_ci
/* 807543B8  38 00 00 01 */	li r0, 1
/* 807543BC  98 1E 07 58 */	stb r0, 0x758(r30)
/* 807543C0  7F C3 F3 78 */	mr r3, r30
/* 807543C4  4B 8C 58 B8 */	b fopAcM_delete__FP10fopAc_ac_c
/* 807543C8  48 00 03 90 */	b lbl_80754758
lbl_807543CC:
/* 807543CC  7F C3 F3 78 */	mr r3, r30
/* 807543D0  38 80 00 0B */	li r4, 0xb
/* 807543D4  4B FF 82 19 */	bl mArg0Check__FP10e_po_classs
/* 807543D8  2C 03 00 00 */	cmpwi r3, 0
/* 807543DC  41 82 00 38 */	beq lbl_80754414
/* 807543E0  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 807543E4  28 03 00 00 */	cmplwi r3, 0
/* 807543E8  41 82 00 2C */	beq lbl_80754414
/* 807543EC  38 81 00 40 */	addi r4, r1, 0x40
/* 807543F0  4B 8C 55 CC */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 807543F4  2C 03 00 00 */	cmpwi r3, 0
/* 807543F8  41 82 00 1C */	beq lbl_80754414
/* 807543FC  80 61 00 40 */	lwz r3, 0x40(r1)
/* 80754400  28 03 00 00 */	cmplwi r3, 0
/* 80754404  41 82 00 10 */	beq lbl_80754414
/* 80754408  38 63 05 38 */	addi r3, r3, 0x538
/* 8075440C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80754410  48 00 31 81 */	bl set__4cXyzFRC3Vec
lbl_80754414:
/* 80754414  38 61 05 54 */	addi r3, r1, 0x554
/* 80754418  88 9E 05 BC */	lbz r4, 0x5bc(r30)
/* 8075441C  38 04 FF FF */	addi r0, r4, -1
/* 80754420  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80754424  38 9D 05 04 */	addi r4, r29, 0x504
/* 80754428  7C 84 02 14 */	add r4, r4, r0
/* 8075442C  48 00 31 65 */	bl set__4cXyzFRC3Vec
/* 80754430  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80754434  83 43 13 68 */	lwz r26, mAudioMgrPtr__10Z2AudioMgr@l(r3)
/* 80754438  38 61 00 14 */	addi r3, r1, 0x14
/* 8075443C  3C 80 00 08 */	lis r4, 0x0008 /* 0x000801D0@ha */
/* 80754440  38 84 01 D0 */	addi r4, r4, 0x01D0 /* 0x000801D0@l */
/* 80754444  48 00 2F 7D */	bl __ct__10JAISoundIDFUl
/* 80754448  7C 64 1B 78 */	mr r4, r3
/* 8075444C  7F 43 D3 78 */	mr r3, r26
/* 80754450  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80754454  38 C0 00 00 */	li r6, 0
/* 80754458  38 E0 00 00 */	li r7, 0
/* 8075445C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80754460  FC 40 08 90 */	fmr f2, f1
/* 80754464  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 80754468  FC 80 18 90 */	fmr f4, f3
/* 8075446C  39 00 00 00 */	li r8, 0
/* 80754470  4B B5 80 9C */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80754474  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80754478  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8075447C  48 00 31 15 */	bl set__4cXyzFRC3Vec
/* 80754480  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80754484  38 81 05 54 */	addi r4, r1, 0x554
/* 80754488  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8075448C  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80754490  C0 7F 00 94 */	lfs f3, 0x94(r31)
/* 80754494  4B B1 B6 24 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80754498  38 61 00 68 */	addi r3, r1, 0x68
/* 8075449C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807544A0  88 BE 05 BC */	lbz r5, 0x5bc(r30)
/* 807544A4  38 05 FF FF */	addi r0, r5, -1
/* 807544A8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 807544AC  38 BD 05 04 */	addi r5, r29, 0x504
/* 807544B0  7C A5 02 14 */	add r5, r5, r0
/* 807544B4  4B B1 26 80 */	b __mi__4cXyzCFRC3Vec
/* 807544B8  38 61 05 48 */	addi r3, r1, 0x548
/* 807544BC  38 81 00 68 */	addi r4, r1, 0x68
/* 807544C0  48 00 31 45 */	bl __as__4cXyzFRC4cXyz
/* 807544C4  38 61 00 68 */	addi r3, r1, 0x68
/* 807544C8  38 80 FF FF */	li r4, -1
/* 807544CC  48 00 2E 01 */	bl __dt__4cXyzFv
/* 807544D0  38 61 05 48 */	addi r3, r1, 0x548
/* 807544D4  48 00 2F 8D */	bl abs__4cXyzCFv
/* 807544D8  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 807544DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807544E0  41 81 02 78 */	bgt lbl_80754758
/* 807544E4  A8 7D 00 8E */	lha r3, 0x8e(r29)
/* 807544E8  38 03 00 01 */	addi r0, r3, 1
/* 807544EC  B0 1D 00 8E */	sth r0, 0x8e(r29)
/* 807544F0  38 00 00 C9 */	li r0, 0xc9
/* 807544F4  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 807544F8  7F C3 F3 78 */	mr r3, r30
/* 807544FC  38 80 00 0B */	li r4, 0xb
/* 80754500  4B FF 80 ED */	bl mArg0Check__FP10e_po_classs
/* 80754504  2C 03 00 00 */	cmpwi r3, 0
/* 80754508  40 82 00 0C */	bne lbl_80754514
/* 8075450C  38 00 00 46 */	li r0, 0x46
/* 80754510  B0 1E 07 4E */	sth r0, 0x74e(r30)
lbl_80754514:
/* 80754514  A8 1E 07 4E */	lha r0, 0x74e(r30)
/* 80754518  2C 00 00 00 */	cmpwi r0, 0
/* 8075451C  40 82 02 3C */	bne lbl_80754758
/* 80754520  7F C3 F3 78 */	mr r3, r30
/* 80754524  38 80 00 0B */	li r4, 0xb
/* 80754528  4B FF 80 C5 */	bl mArg0Check__FP10e_po_classs
/* 8075452C  2C 03 00 00 */	cmpwi r3, 0
/* 80754530  41 82 00 C8 */	beq lbl_807545F8
/* 80754534  38 61 05 54 */	addi r3, r1, 0x554
/* 80754538  38 9D 05 04 */	addi r4, r29, 0x504
/* 8075453C  38 84 00 D8 */	addi r4, r4, 0xd8
/* 80754540  48 00 30 51 */	bl set__4cXyzFRC3Vec
/* 80754544  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80754548  38 81 05 54 */	addi r4, r1, 0x554
/* 8075454C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80754550  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 80754554  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80754558  4B B1 B5 60 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8075455C  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 80754560  28 03 00 00 */	cmplwi r3, 0
/* 80754564  41 82 00 38 */	beq lbl_8075459C
/* 80754568  38 81 00 3C */	addi r4, r1, 0x3c
/* 8075456C  4B 8C 54 50 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80754570  2C 03 00 00 */	cmpwi r3, 0
/* 80754574  41 82 00 28 */	beq lbl_8075459C
/* 80754578  83 41 00 3C */	lwz r26, 0x3c(r1)
/* 8075457C  28 1A 00 00 */	cmplwi r26, 0
/* 80754580  41 82 00 1C */	beq lbl_8075459C
/* 80754584  38 7A 05 38 */	addi r3, r26, 0x538
/* 80754588  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8075458C  48 00 30 05 */	bl set__4cXyzFRC3Vec
/* 80754590  38 7A 08 44 */	addi r3, r26, 0x844
/* 80754594  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80754598  48 00 2F F9 */	bl set__4cXyzFRC3Vec
lbl_8075459C:
/* 8075459C  38 61 00 5C */	addi r3, r1, 0x5c
/* 807545A0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807545A4  38 A1 05 54 */	addi r5, r1, 0x554
/* 807545A8  4B B1 25 8C */	b __mi__4cXyzCFRC3Vec
/* 807545AC  38 61 05 48 */	addi r3, r1, 0x548
/* 807545B0  38 81 00 5C */	addi r4, r1, 0x5c
/* 807545B4  48 00 30 51 */	bl __as__4cXyzFRC4cXyz
/* 807545B8  38 61 00 5C */	addi r3, r1, 0x5c
/* 807545BC  38 80 FF FF */	li r4, -1
/* 807545C0  48 00 2D 0D */	bl __dt__4cXyzFv
/* 807545C4  38 61 05 48 */	addi r3, r1, 0x548
/* 807545C8  48 00 2E 99 */	bl abs__4cXyzCFv
/* 807545CC  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 807545D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807545D4  41 81 01 84 */	bgt lbl_80754758
/* 807545D8  38 00 00 46 */	li r0, 0x46
/* 807545DC  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 807545E0  38 00 00 CA */	li r0, 0xca
/* 807545E4  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 807545E8  7F C3 F3 78 */	mr r3, r30
/* 807545EC  38 80 00 22 */	li r4, 0x22
/* 807545F0  48 00 2D 8D */	bl fopAcM_onSwitch__FPC10fopAc_ac_ci
/* 807545F4  48 00 01 64 */	b lbl_80754758
lbl_807545F8:
/* 807545F8  38 61 05 54 */	addi r3, r1, 0x554
/* 807545FC  88 9E 05 BC */	lbz r4, 0x5bc(r30)
/* 80754600  38 04 00 07 */	addi r0, r4, 7
/* 80754604  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80754608  38 9D 05 04 */	addi r4, r29, 0x504
/* 8075460C  7C 84 02 14 */	add r4, r4, r0
/* 80754610  48 00 2F 81 */	bl set__4cXyzFRC3Vec
/* 80754614  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80754618  38 81 05 54 */	addi r4, r1, 0x554
/* 8075461C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80754620  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 80754624  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80754628  4B B1 B4 90 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8075462C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80754630  83 43 13 68 */	lwz r26, mAudioMgrPtr__10Z2AudioMgr@l(r3)
/* 80754634  38 61 00 10 */	addi r3, r1, 0x10
/* 80754638  3C 80 00 08 */	lis r4, 0x0008 /* 0x000801D0@ha */
/* 8075463C  38 84 01 D0 */	addi r4, r4, 0x01D0 /* 0x000801D0@l */
/* 80754640  48 00 2D 81 */	bl __ct__10JAISoundIDFUl
/* 80754644  7C 64 1B 78 */	mr r4, r3
/* 80754648  7F 43 D3 78 */	mr r3, r26
/* 8075464C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80754650  38 C0 00 00 */	li r6, 0
/* 80754654  38 E0 00 00 */	li r7, 0
/* 80754658  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8075465C  FC 40 08 90 */	fmr f2, f1
/* 80754660  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 80754664  FC 80 18 90 */	fmr f4, f3
/* 80754668  39 00 00 00 */	li r8, 0
/* 8075466C  4B B5 7E A0 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80754670  38 61 00 50 */	addi r3, r1, 0x50
/* 80754674  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80754678  38 A1 05 54 */	addi r5, r1, 0x554
/* 8075467C  4B B1 24 B8 */	b __mi__4cXyzCFRC3Vec
/* 80754680  38 61 05 48 */	addi r3, r1, 0x548
/* 80754684  38 81 00 50 */	addi r4, r1, 0x50
/* 80754688  48 00 2F 7D */	bl __as__4cXyzFRC4cXyz
/* 8075468C  38 61 00 50 */	addi r3, r1, 0x50
/* 80754690  38 80 FF FF */	li r4, -1
/* 80754694  48 00 2C 39 */	bl __dt__4cXyzFv
/* 80754698  38 61 05 48 */	addi r3, r1, 0x548
/* 8075469C  48 00 2D C5 */	bl abs__4cXyzCFv
/* 807546A0  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 807546A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807546A8  41 81 00 B0 */	bgt lbl_80754758
/* 807546AC  38 00 00 32 */	li r0, 0x32
/* 807546B0  B0 1E 07 4E */	sth r0, 0x74e(r30)
/* 807546B4  38 00 00 CB */	li r0, 0xcb
/* 807546B8  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 807546BC  7F C3 F3 78 */	mr r3, r30
/* 807546C0  88 9E 05 BC */	lbz r4, 0x5bc(r30)
/* 807546C4  38 84 00 17 */	addi r4, r4, 0x17
/* 807546C8  48 00 2C B5 */	bl fopAcM_onSwitch__FPC10fopAc_ac_ci
/* 807546CC  48 00 00 8C */	b lbl_80754758
lbl_807546D0:
/* 807546D0  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 807546D4  28 03 00 00 */	cmplwi r3, 0
/* 807546D8  41 82 00 38 */	beq lbl_80754710
/* 807546DC  38 81 00 38 */	addi r4, r1, 0x38
/* 807546E0  4B 8C 52 DC */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 807546E4  2C 03 00 00 */	cmpwi r3, 0
/* 807546E8  41 82 00 28 */	beq lbl_80754710
/* 807546EC  83 41 00 38 */	lwz r26, 0x38(r1)
/* 807546F0  28 1A 00 00 */	cmplwi r26, 0
/* 807546F4  41 82 00 1C */	beq lbl_80754710
/* 807546F8  38 7A 05 38 */	addi r3, r26, 0x538
/* 807546FC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80754700  48 00 2E 91 */	bl set__4cXyzFRC3Vec
/* 80754704  38 7A 08 44 */	addi r3, r26, 0x844
/* 80754708  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8075470C  48 00 2E 85 */	bl set__4cXyzFRC3Vec
lbl_80754710:
/* 80754710  A8 1E 07 4E */	lha r0, 0x74e(r30)
/* 80754714  2C 00 00 00 */	cmpwi r0, 0
/* 80754718  40 82 00 40 */	bne lbl_80754758
/* 8075471C  38 00 00 01 */	li r0, 1
/* 80754720  98 1E 07 58 */	stb r0, 0x758(r30)
/* 80754724  7F C3 F3 78 */	mr r3, r30
/* 80754728  4B 8C 55 54 */	b fopAcM_delete__FP10fopAc_ac_c
/* 8075472C  48 00 00 2C */	b lbl_80754758
lbl_80754730:
/* 80754730  A8 1E 07 4E */	lha r0, 0x74e(r30)
/* 80754734  2C 00 00 00 */	cmpwi r0, 0
/* 80754738  40 82 00 20 */	bne lbl_80754758
/* 8075473C  A8 7D 00 8E */	lha r3, 0x8e(r29)
/* 80754740  38 03 00 01 */	addi r0, r3, 1
/* 80754744  B0 1D 00 8E */	sth r0, 0x8e(r29)
/* 80754748  38 00 00 01 */	li r0, 1
/* 8075474C  98 1E 07 58 */	stb r0, 0x758(r30)
/* 80754750  7F C3 F3 78 */	mr r3, r30
/* 80754754  4B 8C 55 28 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80754758:
/* 80754758  80 1E 05 B4 */	lwz r0, 0x5b4(r30)
/* 8075475C  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 80754760  41 82 00 0C */	beq lbl_8075476C
/* 80754764  2C 00 00 C9 */	cmpwi r0, 0xc9
/* 80754768  40 82 00 64 */	bne lbl_807547CC
lbl_8075476C:
/* 8075476C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80754770  D0 01 05 68 */	stfs f0, 0x568(r1)
/* 80754774  D0 01 05 64 */	stfs f0, 0x564(r1)
/* 80754778  D0 01 05 60 */	stfs f0, 0x560(r1)
/* 8075477C  3B 00 00 00 */	li r24, 0
/* 80754780  3B 60 00 00 */	li r27, 0
/* 80754784  3B 80 00 00 */	li r28, 0
/* 80754788  3C 60 80 75 */	lis r3, holl_demo_eff_Dt@ha
/* 8075478C  3B 43 7C 18 */	addi r26, r3, holl_demo_eff_Dt@l
lbl_80754790:
/* 80754790  3B 3C 0E 7C */	addi r25, r28, 0xe7c
/* 80754794  7C 7E C8 2E */	lwzx r3, r30, r25
/* 80754798  7C 9A DA 2E */	lhzx r4, r26, r27
/* 8075479C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 807547A0  38 DE 04 DC */	addi r6, r30, 0x4dc
/* 807547A4  38 E1 05 60 */	addi r7, r1, 0x560
/* 807547A8  48 00 02 4D */	bl dComIfGp_particle_set__FUlUsPC4cXyzPC5csXyzPC4cXyz
/* 807547AC  7C 7E C9 2E */	stwx r3, r30, r25
/* 807547B0  7C 7E C8 2E */	lwzx r3, r30, r25
/* 807547B4  48 00 02 0D */	bl dComIfGp_particle_getEmitter__FUl
/* 807547B8  3B 18 00 01 */	addi r24, r24, 1
/* 807547BC  2C 18 00 02 */	cmpwi r24, 2
/* 807547C0  3B 7B 00 02 */	addi r27, r27, 2
/* 807547C4  3B 9C 00 04 */	addi r28, r28, 4
/* 807547C8  41 80 FF C8 */	blt lbl_80754790
lbl_807547CC:
/* 807547CC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807547D0  2C 03 00 0C */	cmpwi r3, 0xc
/* 807547D4  40 82 00 10 */	bne lbl_807547E4
/* 807547D8  A8 1E 07 4E */	lha r0, 0x74e(r30)
/* 807547DC  2C 00 00 00 */	cmpwi r0, 0
/* 807547E0  41 82 00 28 */	beq lbl_80754808
lbl_807547E4:
/* 807547E4  2C 03 00 0D */	cmpwi r3, 0xd
/* 807547E8  41 82 00 20 */	beq lbl_80754808
/* 807547EC  2C 03 00 0E */	cmpwi r3, 0xe
/* 807547F0  41 82 00 18 */	beq lbl_80754808
/* 807547F4  2C 03 00 10 */	cmpwi r3, 0x10
/* 807547F8  40 82 00 8C */	bne lbl_80754884
/* 807547FC  A8 1D 00 8E */	lha r0, 0x8e(r29)
/* 80754800  2C 00 00 0B */	cmpwi r0, 0xb
/* 80754804  40 80 00 80 */	bge lbl_80754884
lbl_80754808:
/* 80754808  A8 7E 07 E2 */	lha r3, 0x7e2(r30)
/* 8075480C  38 03 00 01 */	addi r0, r3, 1
/* 80754810  B0 1E 07 E2 */	sth r0, 0x7e2(r30)
/* 80754814  A8 1E 07 E2 */	lha r0, 0x7e2(r30)
/* 80754818  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8075481C  B0 1E 07 E2 */	sth r0, 0x7e2(r30)
/* 80754820  A8 1E 07 E2 */	lha r0, 0x7e2(r30)
/* 80754824  1C 00 07 D0 */	mulli r0, r0, 0x7d0
/* 80754828  7C 03 07 34 */	extsh r3, r0
/* 8075482C  48 00 2C 21 */	bl cM_ssin__Fs
/* 80754830  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80754834  EC 00 00 72 */	fmuls f0, f0, f1
/* 80754838  FC 00 00 1E */	fctiwz f0, f0
/* 8075483C  D8 01 05 B0 */	stfd f0, 0x5b0(r1)
/* 80754840  80 01 05 B4 */	lwz r0, 0x5b4(r1)
/* 80754844  7C 00 07 34 */	extsh r0, r0
/* 80754848  C8 3F 03 40 */	lfd f1, 0x340(r31)
/* 8075484C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80754850  90 01 05 AC */	stw r0, 0x5ac(r1)
/* 80754854  3C 00 43 30 */	lis r0, 0x4330
/* 80754858  90 01 05 A8 */	stw r0, 0x5a8(r1)
/* 8075485C  C8 01 05 A8 */	lfd f0, 0x5a8(r1)
/* 80754860  EC 20 08 28 */	fsubs f1, f0, f1
/* 80754864  D0 21 05 4C */	stfs f1, 0x54c(r1)
/* 80754868  C0 1E 07 BC */	lfs f0, 0x7bc(r30)
/* 8075486C  EC 20 08 2A */	fadds f1, f0, f1
/* 80754870  D0 21 05 58 */	stfs f1, 0x558(r1)
/* 80754874  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80754878  C0 5F 03 08 */	lfs f2, 0x308(r31)
/* 8075487C  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80754880  4B B1 B1 BC */	b cLib_addCalc2__FPffff
lbl_80754884:
/* 80754884  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80754888  2C 03 00 1E */	cmpwi r3, 0x1e
/* 8075488C  40 82 00 10 */	bne lbl_8075489C
/* 80754890  A8 1E 07 4C */	lha r0, 0x74c(r30)
/* 80754894  2C 00 00 00 */	cmpwi r0, 0
/* 80754898  41 82 00 28 */	beq lbl_807548C0
lbl_8075489C:
/* 8075489C  2C 03 00 11 */	cmpwi r3, 0x11
/* 807548A0  41 82 00 20 */	beq lbl_807548C0
/* 807548A4  2C 03 00 12 */	cmpwi r3, 0x12
/* 807548A8  41 82 00 18 */	beq lbl_807548C0
/* 807548AC  2C 03 00 15 */	cmpwi r3, 0x15
/* 807548B0  40 82 00 D4 */	bne lbl_80754984
/* 807548B4  A8 1E 07 4E */	lha r0, 0x74e(r30)
/* 807548B8  2C 00 00 00 */	cmpwi r0, 0
/* 807548BC  41 82 00 C8 */	beq lbl_80754984
lbl_807548C0:
/* 807548C0  A8 7E 07 E2 */	lha r3, 0x7e2(r30)
/* 807548C4  38 03 00 04 */	addi r0, r3, 4
/* 807548C8  B0 1E 07 E2 */	sth r0, 0x7e2(r30)
/* 807548CC  A8 1E 07 E2 */	lha r0, 0x7e2(r30)
/* 807548D0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 807548D4  B0 1E 07 E2 */	sth r0, 0x7e2(r30)
/* 807548D8  C0 5F 03 10 */	lfs f2, 0x310(r31)
/* 807548DC  A8 1E 07 E2 */	lha r0, 0x7e2(r30)
/* 807548E0  C8 3F 03 40 */	lfd f1, 0x340(r31)
/* 807548E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807548E8  90 01 05 B4 */	stw r0, 0x5b4(r1)
/* 807548EC  3C 00 43 30 */	lis r0, 0x4330
/* 807548F0  90 01 05 B0 */	stw r0, 0x5b0(r1)
/* 807548F4  C8 01 05 B0 */	lfd f0, 0x5b0(r1)
/* 807548F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 807548FC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80754900  FC 00 00 1E */	fctiwz f0, f0
/* 80754904  D8 01 05 A8 */	stfd f0, 0x5a8(r1)
/* 80754908  80 01 05 AC */	lwz r0, 0x5ac(r1)
/* 8075490C  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 80754910  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80754914  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80754918  80 63 00 00 */	lwz r3, 0(r3)
/* 8075491C  A8 9E 04 E0 */	lha r4, 0x4e0(r30)
/* 80754920  4B 8B 7B 54 */	b mDoMtx_ZrotS__FPA4_fs
/* 80754924  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80754928  D0 21 05 54 */	stfs f1, 0x554(r1)
/* 8075492C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80754930  D0 01 05 58 */	stfs f0, 0x558(r1)
/* 80754934  D0 21 05 5C */	stfs f1, 0x55c(r1)
/* 80754938  38 61 05 54 */	addi r3, r1, 0x554
/* 8075493C  38 81 05 48 */	addi r4, r1, 0x548
/* 80754940  4B B1 C5 AC */	b MtxPosition__FP4cXyzP4cXyz
/* 80754944  38 61 00 44 */	addi r3, r1, 0x44
/* 80754948  38 9E 07 B8 */	addi r4, r30, 0x7b8
/* 8075494C  38 A1 05 48 */	addi r5, r1, 0x548
/* 80754950  4B B1 21 94 */	b __pl__4cXyzCFRC3Vec
/* 80754954  38 61 05 54 */	addi r3, r1, 0x554
/* 80754958  38 81 00 44 */	addi r4, r1, 0x44
/* 8075495C  48 00 2C A9 */	bl __as__4cXyzFRC4cXyz
/* 80754960  38 61 00 44 */	addi r3, r1, 0x44
/* 80754964  38 80 FF FF */	li r4, -1
/* 80754968  48 00 29 65 */	bl __dt__4cXyzFv
/* 8075496C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80754970  38 81 05 54 */	addi r4, r1, 0x554
/* 80754974  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80754978  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 8075497C  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80754980  4B B1 B1 38 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
lbl_80754984:
/* 80754984  38 61 05 48 */	addi r3, r1, 0x548
/* 80754988  38 80 FF FF */	li r4, -1
/* 8075498C  48 00 29 41 */	bl __dt__4cXyzFv
/* 80754990  38 61 05 54 */	addi r3, r1, 0x554
/* 80754994  38 80 FF FF */	li r4, -1
/* 80754998  48 00 29 35 */	bl __dt__4cXyzFv
/* 8075499C  38 61 05 60 */	addi r3, r1, 0x560
/* 807549A0  38 80 FF FF */	li r4, -1
/* 807549A4  48 00 29 29 */	bl __dt__4cXyzFv
lbl_807549A8:
/* 807549A8  39 61 05 E0 */	addi r11, r1, 0x5e0
/* 807549AC  4B C0 D8 68 */	b _restgpr_24
/* 807549B0  80 01 05 E4 */	lwz r0, 0x5e4(r1)
/* 807549B4  7C 08 03 A6 */	mtlr r0
/* 807549B8  38 21 05 E0 */	addi r1, r1, 0x5e0
/* 807549BC  4E 80 00 20 */	blr 
