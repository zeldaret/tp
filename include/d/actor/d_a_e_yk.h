/**
* @file d_a_e_yk.h
* This header contains information about the Shadow Keese actor.
*
*
*/

#ifndef D_A_E_YK_H
#define D_A_E_YK_H

#include "SSystem/SComponent/c_phase.h"
#include "Z2AudioLib/Z2Creature.h"
#include "f_op/f_op_actor.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "d/d_path.h"

/**
 * @enum daE_YK_Action
 * @brief Shadow Keese current action. 
 * 
 */
enum daE_YK_Action {
    ACT_ROOF,           /**< Keese is on roof. */ 
    ACT_FIGHT_FLY,      /**< Keese is transitioning from flying to aggro. */
    ACT_FIGHT,          /**< Keese is aggroed. */
    ACT_ATTACK,         /**< Keese is attacking. */
    ACT_RETURN,         /**< Keese is returning to roof. */
    ACT_FLY,            /**< Keese is flying around. */
    ACT_PATH_FLY,       /**< Unconfirmed: Keese is flying along its path. */
    ACT_CHANCE = 10,    /**< Keese is stunned/fell down. */
    ACT_WOLFBITE = 13,  /**< Keese is being bitten by wolf. */
    ACT_WIND            /**< Keese is in the gale boomerang. */
};

/**
 * @brief Temporary HIO struct to get a match. Remove later. 
 * 
 */
struct daE_YK_HIO_c_tmp {
    void* vtable;
    /* 0x04 */ s8 field_0x04;
    /* 0x08 */ f32 field_0x08;
    /* 0x0C */ f32 field_0x0c;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
};


/**
 * @brief Shadow Keese Host Input Output class
 * 
 */
class daE_YK_HIO_c {
public:
    /* 8080482C */ daE_YK_HIO_c();
    /* 808077E0 */ virtual ~daE_YK_HIO_c();

    /* 0x00 */ // vtable
    /* 0x04 */ s8 field_0x04; // padding after this
    /* 0x08 */ f32 field_0x08;
    /* 0x0C */ f32 field_0x0c;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
};

/**
 * @ingroup actors-enemies
 * @class e_yk_class
 * @brief Twilight Keese
 * 
 * @details 
 * 
 */
class e_yk_class : public fopEn_enemy_c {
public:
    /* 0x5AC */ request_of_phase_process_class mPhase;  ///< @brief Actor phase process class.
    /* 0x5B4 */ u8 mParam1;                             ///< @brief Actor parameter. Used to determine default action?
    /* 0x5B5 */ u8 mPlayerTriggerBase;                  ///< @brief Actor parameter. Used to determine mPlayerTrigger value. @see mPlayerTrigeer
    /* 0x5B6 */ u8 field_0x5b6;                         ///< @brief ???
    /* 0x5B7 */ u8 mPathIdx;                            ///< @brief Path index. Used to lookup/set mpPath based on the room.
    /* 0x5B8 */ u8 field_0x5b8;                         ///< @brief ???
    /* 0x5B9 */ s8 mPathPntIdx;                         ///< @brief Path point index. Tracks the index of the points along the actor's path.
    /* 0x5BA */ s8 field_0x5ba;                         ///< @brief ???
    /* 0x5BB */ u8 field_0x5bb;                         ///< @brief ???
    /* 0x5BC */ dPath* mpPath;                          ///< @brief Flight path. Flight path for the actor to follow?
    /* 0x5C0 */ mDoExt_McaMorfSO* mpMorfSO;             ///< @brief MorfSO pointer. Tracks the last resource loaded.
    /* 0x5C4 */ Z2CreatureEnemy mCreature;              ///< @brief Z2 Audio class. Used for playing actor noises.
    /* 0x668 */ int mResIdx;                            ///< @brief Resource index. Tracks the index of the last resource loaded.
    /* 0x66C */ s16 field_0x66c;                        ///< @brief ???
    /* 0x66E */ s16 mAction;                            ///< @brief Current action. Tracks the current action of the actor. @see daE_YK_Action
    /* 0x670 */ s16 mActionPhase;                       ///< @brief Current action phase. Tracks the phase of the current action of the actor. @see daE_YK_Action
    /* 0x674 */ cXyz mPathPntPos;                       ///< @brief Path point position. Tracks the position of the point the actor is along a path.
    /* 0x680 */ s16 mAngleFromPlayer;                   ///< @brief Angle from player. Tracks the current actor angle from player.
    /* 0x684 */ f32 mDistanceXZFromPlayer;              ///< @brief Distance from player. Tracks the current distance the actor is from the player.
    /* 0x688 */ f32 mPlayerTrigger;                     ///< @brief Trigger distance from player. Tracks how close to the actor the player has to be before it will begin to attack the player.
    /* 0x68C */ f32 field_0x68c;                        ///< @brief ???
    /* 0x690 */ f32 field_0x690;                        ///< @brief ???
    /* 0x694 */ f32 field_0x694;                        ///< @brief ???
    /* 0x698 */ s16 field_0x698;                        ///< @brief ???
    /* 0x69A */ csXyz field_0x69a;                      ///< @brief ???
    /* 0x6A0 */ s8 field_0x6a0;                         ///< @brief ???
    /* 0x6A1 */ u8 field_0x6a1;                         ///< @brief ???
    /* 0x6A2 */ s16 field_0x6a2[4];                     ///< @brief ???
    /* 0x6AA */ s16 field_0x6aa;                        ///< @brief ???
    /* 0x6AC */ s16 field_0x6ac[6];                     ///< @brief ???
    /* 0x6B8 */ cXyz mBoomrangPosOffset;                ///< @brief Boomerang position offset. Tracks the offset position when the actor is caught in the gale boomerang.
    /* 0x6C4 */ s16 mBoomrangXRotOffset;                ///< @brief Boomerang rotation offset. Tracks the offset x rotation when the actor is caught in the gale boomerang.
    /* 0x6C8 */ dBgS_AcchCir field_0x6c8;               ///< @brief  ???
    /* 0x708 */ dBgS_ObjAcch field_0x708;               ///< @brief ???
    /* 0x8E0 */ dCcD_Stts mCollisionStatus;             ///< @brief Collision status.
    /* 0x91C */ dCcD_Sph mCollisionSphere;              ///< @brief Collision sphere.
    /* 0xA54 */ dCcU_AtInfo mAtColliderInfo;            ///< @brief Attack collider info. Used when actor gets hit.
    /* 0xA78 */ u32 field_0xa78;                        ///< @brief ???
    /* 0xA7C */ u32 field_0xa7c;                        ///< @brief ???
    /* 0xA80 */ u32 field_0xa80;                        ///< @brief ???
    /* 0xA84 */ u32 mParticleEmitterIds[2];             ///< @brief ???
    /* 0xA8C */ u8 field_0xa8c;                         ///< @brief ???
};
// size: 0xA90

#endif /* D_A_E_YK_H */
