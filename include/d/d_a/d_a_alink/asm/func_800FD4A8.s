/* 800FD4A8 000FA3E8  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800FD4AC 000FA3EC  7C 08 02 A6 */ mflr r0
/* 800FD4B0 000FA3F0  90 01 00 24 */ stw r0, 0x24(r1)
/* 800FD4B4 000FA3F4  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 800FD4B8 000FA3F8  93 C1 00 18 */ stw r30, 0x18(r1)
/* 800FD4BC 000FA3FC  7C 7E 1B 78 */ mr r30, r3
/* 800FD4C0 000FA400  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800FD4C4 000FA404  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800FD4C8 000FA408  3B E3 0F 38 */ addi r31, r3, 0xf38
/* 800FD4CC 000FA40C  7F E3 FB 78 */ mr r3, r31
/* 800FD4D0 000FA410  38 9E 1E 1C */ addi r4, r30, 0x1e1c
/* 800FD4D4 000FA414  4B F7 71 8D */ bl cBgS_NS_ChkPolySafe
/* 800FD4D8 000FA418  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800FD4DC 000FA41C  41 82 00 50 */ beq lbl_800FD52C
/* 800FD4E0 000FA420  7F E3 FB 78 */ mr r3, r31
/* 800FD4E4 000FA424  38 9E 1E 1C */ addi r4, r30, 0x1e1c
/* 800FD4E8 000FA428  4B F7 75 D5 */ bl dBgS_NS_ChkMoveBG
/* 800FD4EC 000FA42C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800FD4F0 000FA430  41 82 00 3C */ beq lbl_800FD52C
/* 800FD4F4 000FA434  7F E3 FB 78 */ mr r3, r31
/* 800FD4F8 000FA438  38 9E 1E 1C */ addi r4, r30, 0x1e1c
/* 800FD4FC 000FA43C  38 A0 00 01 */ li r5, 1
/* 800FD500 000FA440  38 DE 04 D0 */ addi r6, r30, 0x4d0
/* 800FD504 000FA444  38 FE 04 DC */ addi r7, r30, 0x4dc
/* 800FD508 000FA448  39 1E 04 E4 */ addi r8, r30, 0x4e4
/* 800FD50C 000FA44C  4B F7 83 75 */ bl dBgS_NS_MoveBgTransPos
/* 800FD510 000FA450  7F E3 FB 78 */ mr r3, r31
/* 800FD514 000FA454  38 9E 1E 1C */ addi r4, r30, 0x1e1c
/* 800FD518 000FA458  38 A0 00 01 */ li r5, 1
/* 800FD51C 000FA45C  38 DE 37 C8 */ addi r6, r30, 0x37c8
/* 800FD520 000FA460  38 E0 00 00 */ li r7, 0
/* 800FD524 000FA464  39 00 00 00 */ li r8, 0
/* 800FD528 000FA468  4B F7 83 59 */ bl dBgS_NS_MoveBgTransPos
lbl_800FD52C:
/* 800FD52C 000FA46C  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800FD530 000FA470  38 83 9A 20 */ addi r4, r3, lbl_80439A20@l
/* 800FD534 000FA474  A8 1E 04 DE */ lha r0, 0x4de(r30)
/* 800FD538 000FA478  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FD53C 000FA47C  7C 64 02 14 */ add r3, r4, r0
/* 800FD540 000FA480  C0 03 00 04 */ lfs f0, 4(r3)
/* 800FD544 000FA484  C0 3E 37 D0 */ lfs f1, 0x37d0(r30)
/* 800FD548 000FA488  C0 42 93 00 */ lfs f2, lbl_80452D00-_SDA2_BASE_(r2)
/* 800FD54C 000FA48C  EC 02 00 32 */ fmuls f0, f2, f0
/* 800FD550 000FA490  EC 81 00 2A */ fadds f4, f1, f0
/* 800FD554 000FA494  C0 7E 37 CC */ lfs f3, 0x37cc(r30)
/* 800FD558 000FA498  7C 04 04 2E */ lfsx f0, r4, r0
/* 800FD55C 000FA49C  C0 3E 37 C8 */ lfs f1, 0x37c8(r30)
/* 800FD560 000FA4A0  EC 02 00 32 */ fmuls f0, f2, f0
/* 800FD564 000FA4A4  EC 01 00 2A */ fadds f0, f1, f0
/* 800FD568 000FA4A8  D0 01 00 08 */ stfs f0, 8(r1)
/* 800FD56C 000FA4AC  D0 61 00 0C */ stfs f3, 0xc(r1)
/* 800FD570 000FA4B0  D0 81 00 10 */ stfs f4, 0x10(r1)
/* 800FD574 000FA4B4  7F C3 F3 78 */ mr r3, r30
/* 800FD578 000FA4B8  38 9E 37 C8 */ addi r4, r30, 0x37c8
/* 800FD57C 000FA4BC  38 A1 00 08 */ addi r5, r1, 8
/* 800FD580 000FA4C0  4B FA 4C 19 */ bl daAlink_c_NS_commonLineCheck
/* 800FD584 000FA4C4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800FD588 000FA4C8  41 82 00 18 */ beq lbl_800FD5A0
/* 800FD58C 000FA4CC  7F E3 FB 78 */ mr r3, r31
/* 800FD590 000FA4D0  38 9E 1B 5C */ addi r4, r30, 0x1b5c
/* 800FD594 000FA4D4  4B F7 78 6D */ bl dBgS_NS_GetWallCode
/* 800FD598 000FA4D8  2C 03 00 04 */ cmpwi r3, 4
/* 800FD59C 000FA4DC  41 82 00 20 */ beq lbl_800FD5BC
lbl_800FD5A0:
/* 800FD5A0 000FA4E0  7F C3 F3 78 */ mr r3, r30
/* 800FD5A4 000FA4E4  38 80 00 01 */ li r4, 1
/* 800FD5A8 000FA4E8  3C A0 80 39 */ lis r5, lbl_8038E068@ha
/* 800FD5AC 000FA4EC  38 A5 E0 68 */ addi r5, r5, lbl_8038E068@l
/* 800FD5B0 000FA4F0  C0 25 00 70 */ lfs f1, 0x70(r5)
/* 800FD5B4 000FA4F4  4B FC 94 95 */ bl daAlink_c_NS_procFallInit
/* 800FD5B8 000FA4F8  48 00 00 14 */ b lbl_800FD5CC
lbl_800FD5BC:
/* 800FD5BC 000FA4FC  38 7E 1E 1C */ addi r3, r30, 0x1e1c
/* 800FD5C0 000FA500  38 9E 1B 5C */ addi r4, r30, 0x1b5c
/* 800FD5C4 000FA504  48 16 AB 85 */ bl SetPolyInfo__13cBgS_PolyInfoFRC13cBgS_PolyInfo
/* 800FD5C8 000FA508  38 60 00 00 */ li r3, 0
lbl_800FD5CC:
/* 800FD5CC 000FA50C  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 800FD5D0 000FA510  83 C1 00 18 */ lwz r30, 0x18(r1)
/* 800FD5D4 000FA514  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800FD5D8 000FA518  7C 08 03 A6 */ mtlr r0
/* 800FD5DC 000FA51C  38 21 00 20 */ addi r1, r1, 0x20
/* 800FD5E0 000FA520  4E 80 00 20 */ blr
