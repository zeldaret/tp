lbl_802C2864:
/* 802C2864  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C2868  7C 08 02 A6 */	mflr r0
/* 802C286C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C2870  39 61 00 20 */	addi r11, r1, 0x20
/* 802C2874  48 09 F9 69 */	bl _savegpr_29
/* 802C2878  7C 7D 1B 78 */	mr r29, r3
/* 802C287C  7C 9E 23 78 */	mr r30, r4
/* 802C2880  7C BF 2B 78 */	mr r31, r5
/* 802C2884  4B FF DD C9 */	bl framework__10Z2CreatureFUlSc
/* 802C2888  38 7D 00 A4 */	addi r3, r29, 0xa4
/* 802C288C  7F C4 F3 78 */	mr r4, r30
/* 802C2890  7F E5 FB 78 */	mr r5, r31
/* 802C2894  81 9D 00 B4 */	lwz r12, 0xb4(r29)
/* 802C2898  81 8C 00 08 */	lwz r12, 8(r12)
/* 802C289C  7D 89 03 A6 */	mtctr r12
/* 802C28A0  4E 80 04 21 */	bctrl 
/* 802C28A4  38 7D 00 C4 */	addi r3, r29, 0xc4
/* 802C28A8  7F C4 F3 78 */	mr r4, r30
/* 802C28AC  7F E5 FB 78 */	mr r5, r31
/* 802C28B0  81 9D 00 D4 */	lwz r12, 0xd4(r29)
/* 802C28B4  81 8C 00 08 */	lwz r12, 8(r12)
/* 802C28B8  7D 89 03 A6 */	mtctr r12
/* 802C28BC  4E 80 04 21 */	bctrl 
/* 802C28C0  38 7D 00 E4 */	addi r3, r29, 0xe4
/* 802C28C4  7F C4 F3 78 */	mr r4, r30
/* 802C28C8  7F E5 FB 78 */	mr r5, r31
/* 802C28CC  81 9D 00 F4 */	lwz r12, 0xf4(r29)
/* 802C28D0  81 8C 00 08 */	lwz r12, 8(r12)
/* 802C28D4  7D 89 03 A6 */	mtctr r12
/* 802C28D8  4E 80 04 21 */	bctrl 
/* 802C28DC  38 7D 01 04 */	addi r3, r29, 0x104
/* 802C28E0  7F C4 F3 78 */	mr r4, r30
/* 802C28E4  7F E5 FB 78 */	mr r5, r31
/* 802C28E8  81 9D 01 14 */	lwz r12, 0x114(r29)
/* 802C28EC  81 8C 00 08 */	lwz r12, 8(r12)
/* 802C28F0  7D 89 03 A6 */	mtctr r12
/* 802C28F4  4E 80 04 21 */	bctrl 
/* 802C28F8  38 7D 01 24 */	addi r3, r29, 0x124
/* 802C28FC  7F C4 F3 78 */	mr r4, r30
/* 802C2900  7F E5 FB 78 */	mr r5, r31
/* 802C2904  81 9D 01 34 */	lwz r12, 0x134(r29)
/* 802C2908  81 8C 00 08 */	lwz r12, 8(r12)
/* 802C290C  7D 89 03 A6 */	mtctr r12
/* 802C2910  4E 80 04 21 */	bctrl 
/* 802C2914  38 7D 01 44 */	addi r3, r29, 0x144
/* 802C2918  7F C4 F3 78 */	mr r4, r30
/* 802C291C  7F E5 FB 78 */	mr r5, r31
/* 802C2920  81 9D 01 54 */	lwz r12, 0x154(r29)
/* 802C2924  81 8C 00 08 */	lwz r12, 8(r12)
/* 802C2928  7D 89 03 A6 */	mtctr r12
/* 802C292C  4E 80 04 21 */	bctrl 
/* 802C2930  38 7D 01 64 */	addi r3, r29, 0x164
/* 802C2934  7F C4 F3 78 */	mr r4, r30
/* 802C2938  7F E5 FB 78 */	mr r5, r31
/* 802C293C  81 9D 01 74 */	lwz r12, 0x174(r29)
/* 802C2940  81 8C 00 08 */	lwz r12, 8(r12)
/* 802C2944  7D 89 03 A6 */	mtctr r12
/* 802C2948  4E 80 04 21 */	bctrl 
/* 802C294C  38 7D 01 84 */	addi r3, r29, 0x184
/* 802C2950  7F C4 F3 78 */	mr r4, r30
/* 802C2954  7F E5 FB 78 */	mr r5, r31
/* 802C2958  81 9D 01 94 */	lwz r12, 0x194(r29)
/* 802C295C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802C2960  7D 89 03 A6 */	mtctr r12
/* 802C2964  4E 80 04 21 */	bctrl 
/* 802C2968  38 7D 01 A4 */	addi r3, r29, 0x1a4
/* 802C296C  7F C4 F3 78 */	mr r4, r30
/* 802C2970  7F E5 FB 78 */	mr r5, r31
/* 802C2974  81 9D 01 B4 */	lwz r12, 0x1b4(r29)
/* 802C2978  81 8C 00 08 */	lwz r12, 8(r12)
/* 802C297C  7D 89 03 A6 */	mtctr r12
/* 802C2980  4E 80 04 21 */	bctrl 
/* 802C2984  38 7D 01 C4 */	addi r3, r29, 0x1c4
/* 802C2988  7F C4 F3 78 */	mr r4, r30
/* 802C298C  7F E5 FB 78 */	mr r5, r31
/* 802C2990  81 9D 01 D4 */	lwz r12, 0x1d4(r29)
/* 802C2994  81 8C 00 08 */	lwz r12, 8(r12)
/* 802C2998  7D 89 03 A6 */	mtctr r12
/* 802C299C  4E 80 04 21 */	bctrl 
/* 802C29A0  38 7D 01 E4 */	addi r3, r29, 0x1e4
/* 802C29A4  7F C4 F3 78 */	mr r4, r30
/* 802C29A8  7F E5 FB 78 */	mr r5, r31
/* 802C29AC  81 9D 01 F4 */	lwz r12, 0x1f4(r29)
/* 802C29B0  81 8C 00 08 */	lwz r12, 8(r12)
/* 802C29B4  7D 89 03 A6 */	mtctr r12
/* 802C29B8  4E 80 04 21 */	bctrl 
/* 802C29BC  39 61 00 20 */	addi r11, r1, 0x20
/* 802C29C0  48 09 F8 69 */	bl _restgpr_29
/* 802C29C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C29C8  7C 08 03 A6 */	mtlr r0
/* 802C29CC  38 21 00 20 */	addi r1, r1, 0x20
/* 802C29D0  4E 80 00 20 */	blr 
