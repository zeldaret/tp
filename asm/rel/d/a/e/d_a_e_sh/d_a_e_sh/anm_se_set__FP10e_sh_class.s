lbl_80790498:
/* 80790498  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8079049C  7C 08 02 A6 */	mflr r0
/* 807904A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 807904A4  39 61 00 20 */	addi r11, r1, 0x20
/* 807904A8  4B BD 1D 35 */	bl _savegpr_29
/* 807904AC  7C 7D 1B 78 */	mr r29, r3
/* 807904B0  3C 60 80 79 */	lis r3, lit_3902@ha /* 0x80791D70@ha */
/* 807904B4  3B E3 1D 70 */	addi r31, r3, lit_3902@l /* 0x80791D70@l */
/* 807904B8  3B C0 00 00 */	li r30, 0
/* 807904BC  80 1D 06 60 */	lwz r0, 0x660(r29)
/* 807904C0  2C 00 00 04 */	cmpwi r0, 4
/* 807904C4  40 82 00 6C */	bne lbl_80790530
/* 807904C8  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807904CC  38 63 00 0C */	addi r3, r3, 0xc
/* 807904D0  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 807904D4  4B B9 7F 59 */	bl checkPass__12J3DFrameCtrlFf
/* 807904D8  2C 03 00 00 */	cmpwi r3, 0
/* 807904DC  40 82 00 4C */	bne lbl_80790528
/* 807904E0  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807904E4  38 63 00 0C */	addi r3, r3, 0xc
/* 807904E8  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 807904EC  4B B9 7F 41 */	bl checkPass__12J3DFrameCtrlFf
/* 807904F0  2C 03 00 00 */	cmpwi r3, 0
/* 807904F4  40 82 00 34 */	bne lbl_80790528
/* 807904F8  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807904FC  38 63 00 0C */	addi r3, r3, 0xc
/* 80790500  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80790504  4B B9 7F 29 */	bl checkPass__12J3DFrameCtrlFf
/* 80790508  2C 03 00 00 */	cmpwi r3, 0
/* 8079050C  40 82 00 1C */	bne lbl_80790528
/* 80790510  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80790514  38 63 00 0C */	addi r3, r3, 0xc
/* 80790518  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 8079051C  4B B9 7F 11 */	bl checkPass__12J3DFrameCtrlFf
/* 80790520  2C 03 00 00 */	cmpwi r3, 0
/* 80790524  41 82 03 E0 */	beq lbl_80790904
lbl_80790528:
/* 80790528  3B C0 00 01 */	li r30, 1
/* 8079052C  48 00 03 D8 */	b lbl_80790904
lbl_80790530:
/* 80790530  2C 00 00 05 */	cmpwi r0, 5
/* 80790534  40 82 00 3C */	bne lbl_80790570
/* 80790538  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 8079053C  38 63 00 0C */	addi r3, r3, 0xc
/* 80790540  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 80790544  4B B9 7E E9 */	bl checkPass__12J3DFrameCtrlFf
/* 80790548  2C 03 00 00 */	cmpwi r3, 0
/* 8079054C  40 82 00 1C */	bne lbl_80790568
/* 80790550  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80790554  38 63 00 0C */	addi r3, r3, 0xc
/* 80790558  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 8079055C  4B B9 7E D1 */	bl checkPass__12J3DFrameCtrlFf
/* 80790560  2C 03 00 00 */	cmpwi r3, 0
/* 80790564  41 82 03 A0 */	beq lbl_80790904
lbl_80790568:
/* 80790568  3B C0 00 01 */	li r30, 1
/* 8079056C  48 00 03 98 */	b lbl_80790904
lbl_80790570:
/* 80790570  2C 00 00 07 */	cmpwi r0, 7
/* 80790574  40 82 00 6C */	bne lbl_807905E0
/* 80790578  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 8079057C  38 63 00 0C */	addi r3, r3, 0xc
/* 80790580  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80790584  4B B9 7E A9 */	bl checkPass__12J3DFrameCtrlFf
/* 80790588  2C 03 00 00 */	cmpwi r3, 0
/* 8079058C  40 82 00 4C */	bne lbl_807905D8
/* 80790590  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80790594  38 63 00 0C */	addi r3, r3, 0xc
/* 80790598  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8079059C  4B B9 7E 91 */	bl checkPass__12J3DFrameCtrlFf
/* 807905A0  2C 03 00 00 */	cmpwi r3, 0
/* 807905A4  40 82 00 34 */	bne lbl_807905D8
/* 807905A8  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807905AC  38 63 00 0C */	addi r3, r3, 0xc
/* 807905B0  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 807905B4  4B B9 7E 79 */	bl checkPass__12J3DFrameCtrlFf
/* 807905B8  2C 03 00 00 */	cmpwi r3, 0
/* 807905BC  40 82 00 1C */	bne lbl_807905D8
/* 807905C0  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807905C4  38 63 00 0C */	addi r3, r3, 0xc
/* 807905C8  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 807905CC  4B B9 7E 61 */	bl checkPass__12J3DFrameCtrlFf
/* 807905D0  2C 03 00 00 */	cmpwi r3, 0
/* 807905D4  41 82 03 30 */	beq lbl_80790904
lbl_807905D8:
/* 807905D8  3B C0 00 01 */	li r30, 1
/* 807905DC  48 00 03 28 */	b lbl_80790904
lbl_807905E0:
/* 807905E0  2C 00 00 08 */	cmpwi r0, 8
/* 807905E4  40 82 00 6C */	bne lbl_80790650
/* 807905E8  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807905EC  38 63 00 0C */	addi r3, r3, 0xc
/* 807905F0  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 807905F4  4B B9 7E 39 */	bl checkPass__12J3DFrameCtrlFf
/* 807905F8  2C 03 00 00 */	cmpwi r3, 0
/* 807905FC  40 82 00 4C */	bne lbl_80790648
/* 80790600  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80790604  38 63 00 0C */	addi r3, r3, 0xc
/* 80790608  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 8079060C  4B B9 7E 21 */	bl checkPass__12J3DFrameCtrlFf
/* 80790610  2C 03 00 00 */	cmpwi r3, 0
/* 80790614  40 82 00 34 */	bne lbl_80790648
/* 80790618  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 8079061C  38 63 00 0C */	addi r3, r3, 0xc
/* 80790620  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 80790624  4B B9 7E 09 */	bl checkPass__12J3DFrameCtrlFf
/* 80790628  2C 03 00 00 */	cmpwi r3, 0
/* 8079062C  40 82 00 1C */	bne lbl_80790648
/* 80790630  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80790634  38 63 00 0C */	addi r3, r3, 0xc
/* 80790638  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 8079063C  4B B9 7D F1 */	bl checkPass__12J3DFrameCtrlFf
/* 80790640  2C 03 00 00 */	cmpwi r3, 0
/* 80790644  41 82 02 C0 */	beq lbl_80790904
lbl_80790648:
/* 80790648  3B C0 00 01 */	li r30, 1
/* 8079064C  48 00 02 B8 */	b lbl_80790904
lbl_80790650:
/* 80790650  2C 00 00 09 */	cmpwi r0, 9
/* 80790654  40 82 00 3C */	bne lbl_80790690
/* 80790658  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 8079065C  38 63 00 0C */	addi r3, r3, 0xc
/* 80790660  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80790664  4B B9 7D C9 */	bl checkPass__12J3DFrameCtrlFf
/* 80790668  2C 03 00 00 */	cmpwi r3, 0
/* 8079066C  40 82 00 1C */	bne lbl_80790688
/* 80790670  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80790674  38 63 00 0C */	addi r3, r3, 0xc
/* 80790678  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 8079067C  4B B9 7D B1 */	bl checkPass__12J3DFrameCtrlFf
/* 80790680  2C 03 00 00 */	cmpwi r3, 0
/* 80790684  41 82 02 80 */	beq lbl_80790904
lbl_80790688:
/* 80790688  3B C0 00 01 */	li r30, 1
/* 8079068C  48 00 02 78 */	b lbl_80790904
lbl_80790690:
/* 80790690  2C 00 00 0A */	cmpwi r0, 0xa
/* 80790694  40 82 00 6C */	bne lbl_80790700
/* 80790698  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 8079069C  38 63 00 0C */	addi r3, r3, 0xc
/* 807906A0  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 807906A4  4B B9 7D 89 */	bl checkPass__12J3DFrameCtrlFf
/* 807906A8  2C 03 00 00 */	cmpwi r3, 0
/* 807906AC  40 82 00 4C */	bne lbl_807906F8
/* 807906B0  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807906B4  38 63 00 0C */	addi r3, r3, 0xc
/* 807906B8  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 807906BC  4B B9 7D 71 */	bl checkPass__12J3DFrameCtrlFf
/* 807906C0  2C 03 00 00 */	cmpwi r3, 0
/* 807906C4  40 82 00 34 */	bne lbl_807906F8
/* 807906C8  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807906CC  38 63 00 0C */	addi r3, r3, 0xc
/* 807906D0  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 807906D4  4B B9 7D 59 */	bl checkPass__12J3DFrameCtrlFf
/* 807906D8  2C 03 00 00 */	cmpwi r3, 0
/* 807906DC  40 82 00 1C */	bne lbl_807906F8
/* 807906E0  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807906E4  38 63 00 0C */	addi r3, r3, 0xc
/* 807906E8  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 807906EC  4B B9 7D 41 */	bl checkPass__12J3DFrameCtrlFf
/* 807906F0  2C 03 00 00 */	cmpwi r3, 0
/* 807906F4  41 82 02 10 */	beq lbl_80790904
lbl_807906F8:
/* 807906F8  3B C0 00 01 */	li r30, 1
/* 807906FC  48 00 02 08 */	b lbl_80790904
lbl_80790700:
/* 80790700  2C 00 00 0B */	cmpwi r0, 0xb
/* 80790704  40 82 00 6C */	bne lbl_80790770
/* 80790708  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 8079070C  38 63 00 0C */	addi r3, r3, 0xc
/* 80790710  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80790714  4B B9 7D 19 */	bl checkPass__12J3DFrameCtrlFf
/* 80790718  2C 03 00 00 */	cmpwi r3, 0
/* 8079071C  40 82 00 4C */	bne lbl_80790768
/* 80790720  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80790724  38 63 00 0C */	addi r3, r3, 0xc
/* 80790728  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8079072C  4B B9 7D 01 */	bl checkPass__12J3DFrameCtrlFf
/* 80790730  2C 03 00 00 */	cmpwi r3, 0
/* 80790734  40 82 00 34 */	bne lbl_80790768
/* 80790738  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 8079073C  38 63 00 0C */	addi r3, r3, 0xc
/* 80790740  C0 3F 00 F4 */	lfs f1, 0xf4(r31)
/* 80790744  4B B9 7C E9 */	bl checkPass__12J3DFrameCtrlFf
/* 80790748  2C 03 00 00 */	cmpwi r3, 0
/* 8079074C  40 82 00 1C */	bne lbl_80790768
/* 80790750  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80790754  38 63 00 0C */	addi r3, r3, 0xc
/* 80790758  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 8079075C  4B B9 7C D1 */	bl checkPass__12J3DFrameCtrlFf
/* 80790760  2C 03 00 00 */	cmpwi r3, 0
/* 80790764  41 82 01 A0 */	beq lbl_80790904
lbl_80790768:
/* 80790768  3B C0 00 01 */	li r30, 1
/* 8079076C  48 00 01 98 */	b lbl_80790904
lbl_80790770:
/* 80790770  2C 00 00 0D */	cmpwi r0, 0xd
/* 80790774  40 82 00 6C */	bne lbl_807907E0
/* 80790778  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 8079077C  38 63 00 0C */	addi r3, r3, 0xc
/* 80790780  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80790784  4B B9 7C A9 */	bl checkPass__12J3DFrameCtrlFf
/* 80790788  2C 03 00 00 */	cmpwi r3, 0
/* 8079078C  40 82 00 4C */	bne lbl_807907D8
/* 80790790  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80790794  38 63 00 0C */	addi r3, r3, 0xc
/* 80790798  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8079079C  4B B9 7C 91 */	bl checkPass__12J3DFrameCtrlFf
/* 807907A0  2C 03 00 00 */	cmpwi r3, 0
/* 807907A4  40 82 00 34 */	bne lbl_807907D8
/* 807907A8  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807907AC  38 63 00 0C */	addi r3, r3, 0xc
/* 807907B0  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 807907B4  4B B9 7C 79 */	bl checkPass__12J3DFrameCtrlFf
/* 807907B8  2C 03 00 00 */	cmpwi r3, 0
/* 807907BC  40 82 00 1C */	bne lbl_807907D8
/* 807907C0  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807907C4  38 63 00 0C */	addi r3, r3, 0xc
/* 807907C8  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 807907CC  4B B9 7C 61 */	bl checkPass__12J3DFrameCtrlFf
/* 807907D0  2C 03 00 00 */	cmpwi r3, 0
/* 807907D4  41 82 01 30 */	beq lbl_80790904
lbl_807907D8:
/* 807907D8  3B C0 00 01 */	li r30, 1
/* 807907DC  48 00 01 28 */	b lbl_80790904
lbl_807907E0:
/* 807907E0  2C 00 00 0F */	cmpwi r0, 0xf
/* 807907E4  40 82 00 B4 */	bne lbl_80790898
/* 807907E8  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807907EC  38 63 00 0C */	addi r3, r3, 0xc
/* 807907F0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807907F4  4B B9 7C 39 */	bl checkPass__12J3DFrameCtrlFf
/* 807907F8  2C 03 00 00 */	cmpwi r3, 0
/* 807907FC  40 82 00 94 */	bne lbl_80790890
/* 80790800  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80790804  38 63 00 0C */	addi r3, r3, 0xc
/* 80790808  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 8079080C  4B B9 7C 21 */	bl checkPass__12J3DFrameCtrlFf
/* 80790810  2C 03 00 00 */	cmpwi r3, 0
/* 80790814  40 82 00 7C */	bne lbl_80790890
/* 80790818  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 8079081C  38 63 00 0C */	addi r3, r3, 0xc
/* 80790820  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 80790824  4B B9 7C 09 */	bl checkPass__12J3DFrameCtrlFf
/* 80790828  2C 03 00 00 */	cmpwi r3, 0
/* 8079082C  40 82 00 64 */	bne lbl_80790890
/* 80790830  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80790834  38 63 00 0C */	addi r3, r3, 0xc
/* 80790838  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 8079083C  4B B9 7B F1 */	bl checkPass__12J3DFrameCtrlFf
/* 80790840  2C 03 00 00 */	cmpwi r3, 0
/* 80790844  40 82 00 4C */	bne lbl_80790890
/* 80790848  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 8079084C  38 63 00 0C */	addi r3, r3, 0xc
/* 80790850  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 80790854  4B B9 7B D9 */	bl checkPass__12J3DFrameCtrlFf
/* 80790858  2C 03 00 00 */	cmpwi r3, 0
/* 8079085C  40 82 00 34 */	bne lbl_80790890
/* 80790860  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80790864  38 63 00 0C */	addi r3, r3, 0xc
/* 80790868  C0 3F 01 08 */	lfs f1, 0x108(r31)
/* 8079086C  4B B9 7B C1 */	bl checkPass__12J3DFrameCtrlFf
/* 80790870  2C 03 00 00 */	cmpwi r3, 0
/* 80790874  40 82 00 1C */	bne lbl_80790890
/* 80790878  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 8079087C  38 63 00 0C */	addi r3, r3, 0xc
/* 80790880  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 80790884  4B B9 7B A9 */	bl checkPass__12J3DFrameCtrlFf
/* 80790888  2C 03 00 00 */	cmpwi r3, 0
/* 8079088C  41 82 00 78 */	beq lbl_80790904
lbl_80790890:
/* 80790890  3B C0 00 01 */	li r30, 1
/* 80790894  48 00 00 70 */	b lbl_80790904
lbl_80790898:
/* 80790898  2C 00 00 12 */	cmpwi r0, 0x12
/* 8079089C  40 82 00 68 */	bne lbl_80790904
/* 807908A0  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807908A4  38 63 00 0C */	addi r3, r3, 0xc
/* 807908A8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807908AC  4B B9 7B 81 */	bl checkPass__12J3DFrameCtrlFf
/* 807908B0  2C 03 00 00 */	cmpwi r3, 0
/* 807908B4  40 82 00 4C */	bne lbl_80790900
/* 807908B8  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807908BC  38 63 00 0C */	addi r3, r3, 0xc
/* 807908C0  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 807908C4  4B B9 7B 69 */	bl checkPass__12J3DFrameCtrlFf
/* 807908C8  2C 03 00 00 */	cmpwi r3, 0
/* 807908CC  40 82 00 34 */	bne lbl_80790900
/* 807908D0  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807908D4  38 63 00 0C */	addi r3, r3, 0xc
/* 807908D8  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 807908DC  4B B9 7B 51 */	bl checkPass__12J3DFrameCtrlFf
/* 807908E0  2C 03 00 00 */	cmpwi r3, 0
/* 807908E4  40 82 00 1C */	bne lbl_80790900
/* 807908E8  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807908EC  38 63 00 0C */	addi r3, r3, 0xc
/* 807908F0  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 807908F4  4B B9 7B 39 */	bl checkPass__12J3DFrameCtrlFf
/* 807908F8  2C 03 00 00 */	cmpwi r3, 0
/* 807908FC  41 82 00 08 */	beq lbl_80790904
lbl_80790900:
/* 80790900  3B C0 00 01 */	li r30, 1
lbl_80790904:
/* 80790904  7F C0 07 75 */	extsb. r0, r30
/* 80790908  41 82 00 30 */	beq lbl_80790938
/* 8079090C  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003003A@ha */
/* 80790910  38 03 00 3A */	addi r0, r3, 0x003A /* 0x0003003A@l */
/* 80790914  90 01 00 08 */	stw r0, 8(r1)
/* 80790918  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8079091C  38 81 00 08 */	addi r4, r1, 8
/* 80790920  38 A0 00 00 */	li r5, 0
/* 80790924  38 C0 FF FF */	li r6, -1
/* 80790928  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8079092C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80790930  7D 89 03 A6 */	mtctr r12
/* 80790934  4E 80 04 21 */	bctrl 
lbl_80790938:
/* 80790938  39 61 00 20 */	addi r11, r1, 0x20
/* 8079093C  4B BD 18 ED */	bl _restgpr_29
/* 80790940  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80790944  7C 08 03 A6 */	mtlr r0
/* 80790948  38 21 00 20 */	addi r1, r1, 0x20
/* 8079094C  4E 80 00 20 */	blr 
